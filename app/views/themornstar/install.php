<?php $this->view("components/header", $data); ?>
<main id="homepage">
    <section class="container" id="dynamic_content">
     Init your installation .
     <form action="/init" method="post">
    <input type="text" name="host" value="localhost">
    <input type="text" name="user" value="root">
    <input type="text" name="pass" value="">
    <input type="text" name="db" value="abc">
    <input type="submit" value="Submit">
    </form>
    </section>
    </main>
    <section id="page_content">
    
    </section>

    <?php $this->view("components/footer"); ?>