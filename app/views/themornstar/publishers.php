
<?php $this->view("components/header", $data); ?>
<main id="homepage">
        <section id="dynamic_content">
        PUBLISHER => 
        <?php 
        if(isset($data['pageQuery'])){
             echo  $data['pageQuery'];
        } ?>
        </section>

              
</main>
<section id="page_content">
</section>
<?php $this->view("components/footer"); ?>



