<?php 

$this->view("components/header", $data); ?>
<main id="homepage">
        User => 
        <?php if(isset($data['pageQuery'])){
             echo  $data['pageQuery'];
              } ?>
              
</main>
<section id="page_content">
</section>
<?php $this->view("components/footer"); ?>


