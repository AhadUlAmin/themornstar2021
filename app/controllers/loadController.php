<?php

class  LoadController extends Controller
{
    public function index()
    { 
        if(isset($_POST["group_no"])){
            $group_number = filter_var($_POST["group_no"], FILTER_SANITIZE_NUMBER_INT, FILTER_FLAG_STRIP_HIGH);
                $items_per_group = 2 ; 
                $uniqueMasterAudience = "Public" ;
                $position = $group_number * $items_per_group;
                $db = Database::getInstance()->getConnection();
                $stmt = $db->prepare("SELECT * FROM `uniquemaster` where
                 uniqueMasterAudience = :uniqueMasterAudience 
                  order by `uniqueMasterId`  LIMIT $position , $items_per_group ");
                 $stmt->execute([
                     ":uniqueMasterAudience"=> $uniqueMasterAudience
                 ]);
    
                $Count = $stmt->rowCount();
                if ($Count  > 0){
                    while($data= $stmt->fetch(PDO::FETCH_ASSOC)) {
                        echo "<div style='height:200px;width:100%'>";
                    ?>    <a  title="<?=$data['uniqueMaster']?>" style="color:white;font-size:72px;" href="<?=ROOT?><?=$data['uniqueMaster']?>/">
                        <?=$data['uniqueMaster']?>
                        </a>
                        <?php 
                if($data['uniqueMasterType'] == "Article"){
    
                }      
                ?>
                <?php
                echo "</div>";
                    }
        
                }
        }
        
    }
}