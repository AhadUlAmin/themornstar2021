
    <?php $this->view("components/header", $data); ?>
    
    <main id="homepage">
    <section class="container" id="dynamic_content">
         COMMUNITIES => 
         <?php if(isset($data['pageQuery'])){
             echo  $data['pageQuery'];
              } ?>
    </section>
    </main>
    <section id="page_content">
    
    </section>
    <?php $this->view("components/footer", $data); ?>