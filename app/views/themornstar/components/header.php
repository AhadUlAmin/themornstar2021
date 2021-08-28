<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title><?php echo $data['page_title'] ; ?></title>
   <link rel="stylesheet" href="<?=ASSETS . THEME ?>css/normalize.css">
   <link rel="stylesheet" href="<?=ASSETS . THEME ?>css/style.css">
   <script src="<?=ASSETS .THEME ?>js/jquery-3.4.1.min.js"></script>
   
   <script src="<?=ASSETS .THEME ?>js/main.js"></script>
   <script type="text/javascript">
      $(document).ready(function() {
         var track_load = 0; //total loaded record group(s)
         var loading = false; //to prevents multipal ajax loads
         var total_groups = 5; //total record group(s)


         // Load data on first load...
         $.post('<?=ROOT?>/loadcontroller', {
            'group_no': track_load
         }, function(data) {
            track_load++;
            $('#myposthere').append(data);
            $('.animation-load').show();

         });
         // Scroll to load data
         $(window).scroll('scroll', function() {
            if ($(window).scrollTop() >= $('#display_posts').offset().top + $('#display_posts').outerHeight() - window.innerHeight) {
               loadData();
            }
         });



         function loadData() {


            if (track_load <= total_groups && loading == false) //there's more data to load
            {
               loading = true; //prevent further ajax loading

               $('.animation-load').html('<img src="loading-animation.gif" width="70px;" height="50px">');
               //load data from the server using a HTTP POST request
               $.post('<?=ROOT?>/loadcontroller', {
                  'group_no': track_load
               }, function(data) {
                  $('#myposthere').append(data);
                  //$(".user-post-display-body-main-container").append(data); //append received data into the element

                  //hide loading image
                  $('.animation-load').html('Load More...'); //hide loading image once data is received

                  track_load++; //loaded group increment
                  loading = false;

               }).fail(function(xhr, ajaxOptions, thrownError) { //any errors?

                  alert(thrownError); //alert with HTTP error
                  $('.animation-load').hide(); //hide loading image
                  loading = false;

               });


            }

            if (track_load >= total_groups - 1) {
               //reached end of the page yet? disable load button

               $('.animation-load').html('No more post');
            }


         }

         $(".animation-load").click(function(e) { //user clicks on button
            loadData();

         });



      });
  </script>
   
</head>
<body class="container">

<header>
   <nav id="secondary">

   <a title="Home"  onclick="window.location.href = '<?=ROOT?>'">
   <p   style="color: white;
    text-decoration: none;
    margin-top: 15px;
    display: inline-block;"> TheMornStar </p>
   </a>

        

   <sup> 0.0.1</sup> 
       <ul>
  
      <li>
         <a title="Authenticate" href="<?=ROOT?>authenticate/">Authenticate</a>
      </li>
         <li><a href="<?=ROOT?>@aminul/" title="aminul">@{User }</a></li>
            <li><a href="<?=ROOT?>+MathVoice/"  title="MathVoice">+{/Community}</a></li>
            <li><a href="<?=ROOT?>~php8/"  title="php8">~{/Series }</a></li>
            <li><a href="<?=ROOT?>titas/" title="Titas">{Publisher}</a></li>
      </ul>
   </nav>
</header>