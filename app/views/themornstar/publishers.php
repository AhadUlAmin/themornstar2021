
<?php $this->view("components/header", $data); ?>
<main id="homepage">
PUBLISHER => 
        <?php 
        if(isset($data['pageQuery'])){
             echo  $data['pageQuery'];
        } ?>
              
</main>
<section id="page_content">
</section>
<?php $this->view("components/footer"); ?>



