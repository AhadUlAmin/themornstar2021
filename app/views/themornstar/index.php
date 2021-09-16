<?php $this->view("components/header", $data); ?>
<main id="homepage">
    <section class="container" id="dynamic_content">
      Homepage 
 
     <?php 
     if(isset($_SESSION['userUniqueId'])){ 
         echo "Welcome " . $_SESSION['userUniqueId'];
         echo "<a href='".ROOT."/logout/'>logout</a>";
        }
     ?>
      
  
      <div id="display_posts" class="user-post-display-body-main-container" style="margin:0px auto;">
      <nav id="secondary">
          <div id="myposthere">
              
          </div>
      </nav>
       </div>
<div class="animation-load" > Load More... </div>


    </section>
    </main>
    <section id="page_content">
    
    </section>

    <?php $this->view("components/footer"); ?>