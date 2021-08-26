<?php
/**
 * Build a simple HTML page with multiple providers.
 */
require_once '../database.php';
$generateUniqueId = generateUniqueId(11);
include 'src/autoload.php';
include 'config.php';

use Hybridauth\Hybridauth;

$hybridauth = new Hybridauth($config);
$adapters = $hybridauth->getConnectedAdapters();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Social Login</title>
</head>
<body>


<ul>
    <?php foreach ($hybridauth->getProviders() as $name) : ?>
        <?php if (!isset($adapters[$name])) : ?>
            <li>
                <a href="<?php print $config['callback'] . "?provider={$name}"; ?>">
                    Sign in with <strong><?php print $name; ?></strong>
                </a>
				<?php header('Location:'. BASE_PATH); ?>
            </li>
        <?php endif; ?>
    <?php endforeach; ?>
</ul>

<?php if ($adapters) : ?>
    <ul>
        <?php foreach ($adapters as $name => $adapter) : ?>
    <?php       
	if(isset($name) && !empty($adapter->getUserProfile()->identifier))
    {
		$stmt = $db->prepare("SELECT * FROM `auth-users` where authProviderId=:authProviderId");
		$stmt->execute(array(':authProviderId' => $adapter->getUserProfile()->identifier));
		$result = $stmt->fetch();
        if($stmt->rowCount()> 0){
			$_SESSION["uniqueSessionId"] = $result['authUserAltName'];
			$_SESSION["authProviderName"] = $result['authProviderName'];
			 header('Location:'. BASE_PATH);

		}else{

        // Check Email with existing Email ,
        $checkEmail = $db->prepare("SELECT * from `users` WHERE userEmail=:userEmail");
        $emailData = array(
            ':userEmail' => $adapter->getUserProfile()->email
        );
        $checkEmail->execute($emailData);
        $emailResult = $checkEmail->fetch();
        if ($checkEmail->rowCount() > 0)
        {
            $_SESSION["uniqueSessionId"] = $emailResult['userAltName'];
			$_SESSION["authProviderName"] = $name;
			header('Location:'. BASE_PATH);
			
            $data = array(
                ':authUserAltName' => $emailResult['userAltName'],
                ':authProviderName' => $name,
                ':authProviderId' => $adapter->getUserProfile()->identifier,
            );
            $statement = $db->prepare("INSERT INTO `auth-users`(`authUserAltName`, `authProviderName`, `authProviderId`) 
                VALUES (:authUserAltName, :authProviderName , :authProviderId)");
            $statement->execute($data);

        }
        else
        {
            // Insert data to auth-user
            $userJoined = date("Y-m-d H:i:s");
			$userActivation = generateUniqueId(64);
            $data = array(
                ':authUserAltName' => $generateUniqueId,
                ':authProviderName' => $name,
                ':authProviderId' => $adapter->getUserProfile()->identifier,
            );
            $dataUsers = array(
                ':userAltName' => $generateUniqueId,
                ':userEmail' => $adapter->getUserProfile()->email,
                ':userFirstName' => $adapter->getUserProfile()->firstName,
                ':userLastName' => $adapter->getUserProfile()->lastName,
                ':userJoined' => $userJoined,
                ':userAvatar' => $adapter->getUserProfile()->photoURL,
				':userActivation' => $userActivation,
				
            );
            $statement = $db->prepare("INSERT INTO `auth-users`(`authUserAltName`, `authProviderName`, `authProviderId`) 
                VALUES (:authUserAltName, :authProviderName , :authProviderId)");
            $statement->execute($data);

            $stmt = $db->prepare(" INSERT INTO `users`( `userAltName`, `userEmail`,  `userFirstName`, `userLastName`, `userJoined`, `userAvatar`,`userActivation`) 
                VALUES (:userAltName, :userEmail , :userFirstName , :userLastName  , :userJoined , :userAvatar , :userActivation)");
            $stmt->execute($dataUsers);

            $_SESSION["uniqueSessionId"] = $generateUniqueId;
			$_SESSION["authProviderName"] = $name;
			header('Location:'. BASE_PATH); 
			
        }

		};
    
    }
  
    
    ?>

            <li>
                <strong>Hello , <?php print $adapter->getUserProfile()->displayName; ?></strong> <br>
                <strong><img src="<?php print $adapter->getUserProfile()->photoURL; ?>"></strong> <br>
                from
                <i><?php print $name; ?></i>
                <span>(<a href="<?php print $config['callback'] . "?logout={$name}"; ?>">Log Out</a>)</span>
            </li>
        <?php endforeach; ?>
    </ul>
<?php endif; ?>
</body>
</html>
