<?php 
	$this->load->view('Dashboard/header');
 ?>


 <div id="headerwrap">
        <div class="container">
                    <div class="row">
                        <div class="col-lg-8 col-lg-offset-2">
                        </div>
                        <div class="col-lg-8 col-lg-offset-2 himg">
                        	<table class="table">
                              <thead class="thead-inverse">
                                <tr>
                                  <th><center>NO</center></th>
                                  <th><center>Nama Bengkel</center></th>
                                  <th><center>Contact</center></th>
                                  <th><center>Alamat</center></th>
                                  <th><center>#</center></th>
                                </tr>
                              </thead>
                              <tbody>


                       <?php 
                            $no=1;
                             foreach ($tehnisi as $row) {
                        ?>
                                <tr>
                                  <th><?php echo $no++ ?></th>
                                  <td><?php echo $row->nama; ?></td>
                                  <td><?php echo $row->contact ?></td>
                                  <td><?php echo $row->alamat ?></td>
                                  <td align="center">
                                     <a href="<?php echo base_url()."Tehnisi/lihat_data_tehnisi/".$row->id_tehnisi ?>">lihat</a>    
                                </tr>
                        <?php                            
                           }
                         ?>        
                              </tbody>
                            </table>
                        </div>
                    </div><!-- /row -->
        </div> <!-- /container -->
    </div><!-- /headerwrap

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
  <script src="assets/js/retina-1.1.0.js"></script>
  <script src="assets/js/jquery.hoverdir.js"></script>
  <script src="assets/js/jquery.hoverex.min.js"></script>
  <script src="assets/js/jquery.prettyPhoto.js"></script>
    <script src="assets/js/jquery.isotope.min.js"></script>
    <script src="assets/js/custom.js"></script>
<script>