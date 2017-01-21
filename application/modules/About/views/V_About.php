<?php 
$this->load->view('Dashboard/header');
?>

<!-- *****************************************************************************************************************
   HEADERWRAP
   ***************************************************************************************************************** -->
  <div id="headerwrap">
      <div class="container">
      <div class="row">
        <div class="col-lg-8 col-lg-offset-2">
        </div>
        <div class="col-lg-8 col-lg-offset-2 himg">
          <h4>KOMPUTERKU.</h4>
          <p>Komputerku adalah sebuah website yang memberikan informasi tentang dunia komputer di Jepara khususnya 
          dan Nasional pada umumnya. Disini kami menyediakan sebuah forum untuk dapat berbagi informasi tentang komputer dan memberikan solusi kepada setiap anggota Komputerku.  </p></br></br>
          <div class="container">

        <div class="row">

            <div class="col-md-12">

                <div class="row carousel-holder">

                    <div class="col-md-8">
                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img class="slide-image" src="<?php echo base_url()."assets/img/roll_image/index/1.jpg"?>" alt="">
                                </div>c
                                <div class="item">
                                    <img class="slide-image" src="<?php echo base_url()."assets/img/roll_image/index/2.jpg"?>" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="<?php echo base_url()."assets/img/roll_image/index/3.jpg"?>" alt="">
                                </div>
                            </div>
                            <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                            </a>
                            <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                            </a>

                        </div>
                    </div>

                </div>
        </div>
      </div><!-- /row -->
      </div> <!-- /container -->
  </div><!-- /headerwrap -->

<?php 
	$this->load->view('Dashboard/Konten');
  //$this->load->view('Dashboard/imagekonten');
?>