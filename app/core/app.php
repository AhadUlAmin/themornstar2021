<?php

class App
{
    protected $controller = "home";
    protected $method = "index";
    protected $params =[];
    public function __construct()
    {
        $url = $this->parseURL(); 
        if(file_exists("../app/controllers/".strtolower($url[0]) . ".php"))
        {
            $this->controller = strtolower($url[0]);
            unset($url[0]);
            require "../app/controllers/".$this->controller. ".php";
            $this->controller = new $this->controller();
        } else{

            $db = Database::getInstance();
            $paramData = $this->getPUCC($url[0]);
            if($paramData['paramType'] == "users"){

                $sql = "SELECT * FROM users where userName=:userName limit 1 ";
                $data['userName'] = $paramData['paramName'];
                $result = $db->read($sql,$data);
                if(is_array($result)){
                    $this->controller = "users";
                    require "../app/controllers/".$this->controller. ".php";
                    $this->controller = new $this->controller();
    
                }else{
                    die("User  not exits");
                } 

            }else if($paramData['paramType'] == "communities"){
                $sql = "SELECT * FROM communities where communitiesName=:communitiesName limit 1 ";
                $data['communitiesName'] = $paramData['paramName'];
                $result = $db->read($sql,$data);
                if(is_array($result)){
                    $this->controller = "communities";
                    require "../app/controllers/".$this->controller. ".php";
                    $this->controller = new $this->controller();
    
                }else{
                    die("communities  not exits");
                }
            }
            else if($paramData['paramType'] == "collections"){
                $sql = "SELECT * FROM collections where collectionsName=:collectionsName limit 1 ";
                $data['collectionsName'] = $paramData['paramName'];
                $result = $db->read($sql,$data);
                if(is_array($result)){
                    $this->controller = "collections";
                    require "../app/controllers/".$this->controller. ".php";
                    $this->controller = new $this->controller();
    
                }else{
                    die("collections  not exits");
                }
            }else if($paramData['paramType'] == "publishers"){
                $sql = "SELECT * FROM publishers where publishersName=:publishersName limit 1 ";
                $data['publishersName'] = $paramData['paramName'];
                $result = $db->read($sql,$data);

                $sql2 = "SELECT * FROM uniquemaster where uniqueMaster=:uniqueMaster";
                $data2['uniqueMaster'] = $paramData['paramName'];
                $result2 = $db->read($sql2,$data2);

                if(is_array($result)){
                    $this->controller = "publishers";
                    require "../app/controllers/".$this->controller. ".php";
                    $this->controller = new $this->controller();
    
                }
                
                else if(is_array($result2)){
                    $this->controller = "uniquemaster";
                    require "../app/controllers/".$this->controller. ".php";
                    $this->controller = new $this->controller();
                }
                else{

                    if(file_exists("../app/controllers/".$paramData['paramName'].".php"))
                    {
                        $this->controller = $paramData['paramName'];
                        require "../app/controllers/".$this->controller. ".php";
                        $this->controller = new $this->controller();
                    }


                    die("publishers or page or content not exits");
                }
            }
            else
            {
              die("Page not exits");
            }
            
            
        }

        if(isset($url[1]))
        {
            $url[1] = strtolower($url[1]);

            if(method_exists($this->controller, $url[1]))
            {
                $this->method = $url[1];
                unset($url[1]);
            }
        }

        $this->params = (count($url) > 0) ? $url : ["home"] ;
       // $this->params = $url ? array_values($url) : [];
        call_user_func_array([$this->controller,$this->method],$this->params);

    }

    private function parseURL()
    {
        $url = isset($_GET['url']) ? $_GET['url'] : "home";
        return explode('/', $url);
    }

    public function getPUCC($paramType){
        $paramData = [];

        if (str_contains($paramType, '@')) { 
            $paramData['paramName'] = substr($paramType, 1);
            $paramData['paramType']="users";
            return $paramData ;

        }elseif(str_contains($paramType, '~')){
            $paramData['paramName'] = substr($paramType, 1);
            $paramData['paramType']="collections";
            return $paramData ;
        }
        elseif(str_contains($paramType, ' ')){
            $paramData['paramName'] = substr($paramType, 1);
            $paramData['paramType']="communities";
            return $paramData ;
        }else{
            $paramData['paramName'] = $paramType;
            $paramData['paramType']="publishers";
            return $paramData ;
        }
    }
}