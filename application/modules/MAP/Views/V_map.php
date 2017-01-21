<?php 
	$this->load->view('Dashboard/header');
 ?>
 <html>
    <head><?php echo $map['js']; ?></head>
    <body>

 <!-- box search -->   
   
<!--menampilkan map -->
    <div class="col-xs-12">
         <div class="col-xs-9">
          </br></br></br>
        <?php echo $map['html']; ?>
        <div id="directionsDiv"></div>
    </div>
    <div class="col-xs-3">
    </br></br></br>
        <div class="row">
                      <div class="thumbnail">
                        <h4><center>KOMPUTERKU.</center></h4>
                          <p>Komputerku adalah sebuah website yang memberikan informasi tentang dunia komputer di Jepara khususnya 
                          dan Nasional pada umumnya. Disini kami menyediakan sebuah forum untuk dapat berbagi informasi tentang komputer dan memberikan solusi kepada setiap anggota Komputerku.  </p>
                      </div>
                      <input type="text" name="txcari">
                      <a href="#" class="btn btn-info">cari tehnisi</a>
        </div>  
    </div>
    </div>  
</body>
</br></br>
<?php 
    $this->load->view('Dashboard/konten');
 ?>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB_SWZ6qqsvo7lGFkw2tEcOZytKpPQ0J20&callback=initMap"
    async defer></script>
