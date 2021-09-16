<?php
class User
{   
    private $err = "";
    public function authenticate($POST)
    {   $data = [];
        $db = Database::getInstance();
        $data['userEmail'] = trim($POST['userEmail']);
        $data['userPassword'] = trim($POST['userPassword']);

        if(empty($data['userEmail']) || !preg_match("/^[a-zA-Z0-9._-]+@[a-zA-Z]+.[a-zA-Z]+$/",$data['userEmail'])){
            $this->err .= "Not a valid email <br>";
        }
        if(strlen($data['userPassword']) < 3){
            $this->err .= "Password must be atleast 8 charecters <br>";
        }
         //check email address & Password
    
        // $sql = "SELECT * FROM users WHERE userEmail = :userEmail";
        // $arr['userEmail'] =  $data['userEmail'];
        // $check = $db->read($sql,$arr);
        // if(is_array($check)){
        //   $this->err .= "Email already in use <br>";
        // }
         //confirm
        $data['userPassword'] = hash('sha1',$data['userPassword']);
        $query = "SELECT * FROM users WHERE userEmail = :userEmail AND userPassword = :userPassword";
         $result = $db->read($query,$data);
           if(is_array($result)){
                     $_SESSION['userUniqueId'] = $result[0]->userAltName;
                     show($_SESSION['userUniqueId']);
                     header("Location: ". ROOT);
                     die;
           }


        if($this->err == ""){
          //save
          $data['userType'] = "Customer";
          $data['userAltName'] = $this->generateUniqueId(11);
          $data['userJoined'] = date("Y-m-d H:i:s");
          $data['userPassword'] = hash('sha1',$data['userPassword']);

          $query = "INSERT INTO `users` (`userAltName`, `userEmail`, `userPassword`, `userJoined`,  `userType`)
           VALUES (:userAltName,:userEmail,:userPassword,:userJoined,:userType)";
        
         $result = $db->write($query,$data);
         if($result){
             header("Location: ". ROOT );
             die;
         }

        }
        
        $_SESSION['err'] = $this->err;


    }

    public function login($POST)
    {
        $data = [];
        $db = Database::getInstance();
        $data['userEmail'] = trim($POST['userEmail']);
        $data['userPassword'] = trim($POST['userPassword']);

        if(empty($data['userEmail']) || !preg_match("/^[a-zA-Z0-9._-]+@[a-zA-Z]+.[a-zA-Z]+$/",$data['userEmail'])){
            $this->err .= "Not a valid email <br>";
        }
        if(strlen($data['userPassword']) < 3){
            $this->err .= "Password must be atleast 8 charecters <br>";
        }

        if($this->err == ""){
          //confirm
          $data['userPassword'] = hash('sha1',$data['userPassword']);
    
         $query = "SELECT * FROM users WHERE userEmail = :userEmail AND userPassword = :userPassword";
         $result = $db->read($query,$data);
         if(is_array($result)){
            $_SESSION['userUniqueId'] = $result[0]->userAltName;
            show($_SESSION['userUniqueId']);
            header("Location: ". ROOT);
            die;
         }

         $this->err .= "Email / Password is not matched <br>";

        }
        
        $_SESSION['err'] = $this->err;

    }
    /*
    isLoggedIn function to check session from database and return users information .
    Remmember here , userAltName is used as userUniqueId
    */

    public function isLoggedIn()
    {
        if(isset($_SESSION['userUniqueId']))
        {
            $query = "SELECT * FROM users WHERE userAltName = :userAltName limit 1";
            $arr['userAltName'] = $_SESSION['userUniqueId'];
            $db = Database::getInstance();
            $result = $db->read($query,$arr);
            if(is_array($result)){
                return $result[0];
            }
        }
        return false;

    }

    public function logout(){
        if(isset($_SESSION['userUniqueId'])){
            unset($_SESSION['userUniqueId']);
            header('Location:'.ROOT);
            die;
        }
    }


    public function getUser()
    {

    }

    private function generateUniqueId($strength = 16) 
    {
       $permitted_chars = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
       $input_length = strlen($permitted_chars);
       $random_string = '';

       for($i = 0; $i < $strength; $i++) {

           $random_character = $permitted_chars[mt_rand(0, $input_length - 1)];
           $random_string .= $random_character;

       }

       return $random_string;
   
    }
}