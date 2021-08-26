<?php
// Singleton to connect db.
class Database{
  // Hold the class instance.
  private static $instance = null;
  private $conn;
  // The db connection is established in the private constructor.
  private function __construct()
  {
    try
    {  
        $dsn = DB_TYPE.":host=".DB_HOST.";dbname=".DB_NAME;
        $this->conn = new PDO($dsn,DB_USER,DB_PASS);
        $this->conn->exec("set names utf8");
        $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    }catch(PDOException $e)
    {
      die($e->getMessage());
    }


  }
  
  public static function getInstance()
  {
    if(!self::$instance)
    {
      self::$instance =  new self();
    }

    return self::$instance;
  }
  
  public function getConnection()
  {
    return $this->conn;
  }

  public function read($query,$data = []){ 
    $stmt = $this->conn->prepare($query);
    $result = $stmt->execute($data);
    $data = $stmt->fetchAll(PDO::FETCH_OBJ);
    if($result)
    {
            if(is_array($data) && count($data)>0){
                return $data;
            }
        }

        return false;

  }

public function write($query,$data = []){
    $stmt = $this->conn->prepare($query);
    $result = $stmt->execute($data);
   if($result)
   {
     return true;
   }

    return false;

    }

}



// $instance = Database::getInstance()->getConnection();
// $sql = "insert into `words` (`word`) values (:word)";    
// $query = $instance->prepare($sql);
// $result = $query->execute(["word" => "Yahoo"]);    
// if($result){  echo "Insert Successfull.";} else echo "Fail";

?>






