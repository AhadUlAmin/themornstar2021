<?php
include 'login/src/autoload.php';
include 'login/config.php';

use Hybridauth\Hybridauth;

$hybridauth = new Hybridauth($config);
$adapters = $hybridauth->getConnectedAdapters(); ?>
<main id="homepage">
        
<div class="row">
 <div class="col-sm-12">

<div class="card"  style="text-align:center;">
 <h3>Athenticate to enter Our Universe</h4>
 <?php 
   if(isset($_GET['resetPassword'])){
	   echo "<h5 style='color:red;'> To reset Password now , Enter your Email and your new Password here then Hit on Enter in Our Universe.</h5>";
   }
 ?>
  <div class="card-body" style="background:#212529!important;text-align:left;">
		<form action="<?=ROOT ?>authenticate/" method="POST">
		  <div class="mb-1">
			<label for="exampleInputEmail1" class="form-label">Email address</label>
			<input type="email" class="form-control" id="email" name="email" aria-describedby="emailHelp" required>
		  </div>
		  <div class="mb-1">
			<label for="exampleInputPassword1" class="form-label">Password</label>
			<input type="password" class="form-control" id="password" name="password" required>
		  </div>
		  <div class="mb-1 form-check">
			<input type="checkbox" class="form-check-input" id="forgotPassword" name="forgotPassword" value="forgotPassword">
			<label class="form-check-label" for="exampleCheck1">Check me if you forgot Password</label> 
					  <button type="submit" style="float:right;margin:5px;" class="btn btn-secondary"> Enter in our universe</button> 
		  </div>
<br>
		<div style="text-align:center;padding:20px;margin:0px auto;">
		      <?php foreach ($hybridauth->getProviders() as $name) : ?> 
        <?php if (!isset($adapters[$name])) : ?>
                <a style="text-decoration:none;padding:5px;color:white;" href="<?php print $config['callback'] . "?provider={$name}"; ?>">
                 <strong><?php print $name; ?></strong>
                </a>
        <?php endif; ?> 
    <?php endforeach; ?>
	   </div>
  </div>

</div>
</div>
</div>




<?php if ($adapters) : ?>
    <!--h1>You are logged in:</h1-->
    <ul>
        <?php foreach ($adapters as $name => $adapter) : ?>
<?php
if (isset($name) && !empty($adapter->getUserProfile()->identifier))
{
    $stmt = $db->prepare("SELECT * FROM `auth-users` where authProviderId=:authProviderId");
    $stmt->execute(array(
        ':authProviderId' => $adapter->getUserProfile()->identifier
    ));
    $result = $stmt->fetch();
    if ($stmt->rowCount() > 0)
    {
        $_SESSION["uniqueSessionId"] = $result['authUserAltName'];
		$_SESSION["authProviderName"] = $result['authProviderName'];
    }
    else
    {

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
            );
            $statement = $db->prepare("INSERT INTO `auth-users`(`authUserAltName`, `authProviderName`, `authProviderId`) 
                VALUES (:authUserAltName, :authProviderName , :authProviderId)");
            $statement->execute($data);

            $stmt = $db->prepare(" INSERT INTO `users`( `userAltName`, `userEmail`,  `userFirstName`, `userLastName`, `userJoined`, `userAvatar`) 
                VALUES (:userAltName, :userEmail , :userFirstName , :userLastName  , :userJoined , :userAvatar)");
            $stmt->execute($dataUsers);

            $_SESSION["uniqueSessionId"] = $generateUniqueId;
			$_SESSION["authProviderName"] = $name;
        }

    }

}

?>



            <!--li>
                <strong>Hello , <?php //print $adapter->getUserProfile()->displayName; ?></strong> <br>
                <strong><img src="<?php //print $adapter->getUserProfile()->photoURL; ?>"></strong> <br>
                from
                <i><?php // print $name; ?></i>
                <span>(<a href="<?php //print $config['callback'] . "?logout={$name}"; ?>">Log Out</a>)</span>
            </li-->
        <?php endforeach; ?>
    </ul> 

<?php endif; ?>

</main>
<section id="page_content">
</section>

