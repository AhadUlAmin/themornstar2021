<?php $this->view("components/header", $data); ?>
<main id="homepage">
    <section id="dynamic_content">
       <h1>  Calculate Form </h1>
        <form action="/calculate" method="post">

        
         <label for="products">Product Type :</label>
            <select id="products" name="products" form="products">
            <option value="magazine">Magazine</option>
            <option value="flyer">Fyler</option>
            <option value="literature">Literature</option>
            <option value="giftCard">Gift Card</option>
            </select>
            <br>

            <label for="papper">Paper Type :</label>
            <select id="papper" name="papper">
            <option value="">Art Card 300 GSM</option>
            </select>
            <br>
            
           <label for="size">Trim Size :</label>
            <select id="size" name="size">
             <option value="sizeXY">8.5x10.5</option>
            </select>

            <br>
            <label for="quantity">Quantity :</label>
            <input type="text" name="quantity" id="quantity">

            <br>
            <div style="background:#888;">

            <label for="interiorType">Interior Type:</label>
            <select id="interiorType" name="interiorType">
            <option value="color">Color</option>
            <option value="blackWhite">Black & White</option>
            </select>
             <br>
            <label for="innerPapper">Inner Paper Type :</label>
            <select id="innerPapper" name="innerPapper">
            <option value="">Art Card 300 GSM</option>
            </select>
            <br>

            <br>

            <label for="innerLamination">Inner Lamination Type:</label>
            <select id="innerLamination" name="lamination" >
            <option value="gloussy">Gloussy </option>
            <option value="matt">Matt</option>
            </select>

            <br>
            <br>
            <label for="innerCount">Count:</label>
            <input type="number" name="innerCount" id="innerCount">

            </div>
            <br>

            <label for="lamination">Lamination Type:</label>
            <select id="lamination" name="lamination" >
            <option value="gloussy">Gloussy </option>
            <option value="matt">Matt</option>
            </select>

            <br>

            <label for="binding">Binding Type:</label>
            <select id="binding" name="binding">
            <option value="spiral">Wear Spiral </option>
            <option value="plastic">Plastic </option>
            </select><br>
            <input type="submit" value="Calculate!">
            </form>
    </section>
</main>
    <section id="page_content">
    
    </section>
<style>
*, *:before, *:after {
  box-sizing: border-box;
}
input[type=text] {
    padding:10px;
    margin:10px 0; 
}
input[type=text] {
  padding:10px;
  border:0;
  box-shadow:0 0 15px 4px rgba(0,0,0,0.06);
}


/* container */
label {
  position: relative; /* to contain absolute elements */
  padding-left:30px; /* free space for custom checkbox */
  cursor: pointer;
}
/* hide default checkbox  */
label input[type=checkbox] {
  position: absolute; /* prevent taking any space */
  /* cross-browser hidingg */
  opactiy: 0;
  width:0; 
  height:0;
}
/* custom checkbox */
label span {
  position: absolute;
  /* position to the free space in <label> */
  top:0;
  left:0;
  width:20px; 
  height:20px;
  background-color: #ddd;
  transition: .3s background-color; /* slight transition */
}
/* the check icon */
label span:after {
  content: "";
  position: absolute;
  display: none;
  
  /* check icon */
  left: 6px;
  top: 2px;
  width: 4px;
  height: 10px;
  border: solid white;
  border-width: 0 3px 3px 0;
  transform: rotate(45deg);
}
label:hover span {
  background-color: #ccc;
}

/**** Here's the trick ***/
label input:checked ~ span {
  background-color: #2eaadc;
}
label input:checked ~ span:after {
  display:block;
}

/* container */
label {
  display:block;
  margin-bottom:4px;
  position: relative; /* to contain absolute elements */
  padding-left:30px; /* free space for custom radio button */
  cursor: pointer;
}
/* hide default radio button  */
label input[type=radio] {
  position: absolute; /* prevent taking any space */
  /* cross-browser hidingg */
  opacity: 0;
  width:0; 
  height:0;
}
/* custom radio button */
label span {
  position: absolute;
  /* position to the free space in <label> */
  top:0;
  left:0;
  width:20px; 
  height:20px;
  background-color: #ddd;
  border-radius: 50%;
  transition: .3s background-color; /* slight transition */
}
/* the check icon */
label span:after {
  content: "";
  position: absolute;
  display: none;
  
  /* middle */
  top:50%;
  left:50%;
  transform: translate(-50%,-50%);
  background-color:#fff;
  width:8px;
  height:8px;
  border-radius:50%;
}
label:hover span {
  background-color: #ccc;
}

/**** Here's the trick ***/
label input:checked ~ span {
  background-color: #2eaadc;
}
label input:checked ~ span:after {
  display:block;
}



</style>
<?php $this->view("components/footer"); ?>