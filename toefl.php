<?php session_start();
if(!isset($_SESSION['id']))
{
	header ('location:index.php');
}
	
?>
<!DOCTYPE html>
<html lang="zxx" class="no-js">

<head>
<style>
a, a:visited, a:hover, a:active {
  color: inherit;
}
</style>
  <!-- Mobile Specific Meta -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Favicon -->
  <link rel="shortcut icon" href="img/fav.png" />
  <!-- Author Meta -->
  <meta name="author" content="colorlib" />
  <!-- Meta Description -->
  <meta name="description" content="" />
  <!-- Meta Keyword -->
  <meta name="keywords" content="" />
  <!-- meta character set -->
  <meta charset="UTF-8" />
  <!-- Site Title -->
  <title>Educate India</title>

  <link href="https://fonts.googleapis.com/css?family=Playfair+Display:900|Roboto:400,400i,500,700" rel="stylesheet" />
  <!--
      CSS
      =============================================
    -->
  <link rel="stylesheet" href="css/linearicons.css" />
  <link rel="stylesheet" href="css/font-awesome.min.css" />
  <link rel="stylesheet" href="css/bootstrap.css" />
  <link rel="stylesheet" href="css/magnific-popup.css" />
  <link rel="stylesheet" href="css/owl.carousel.css" />
  <link rel="stylesheet" href="css/nice-select.css">
  <link rel="stylesheet" href="css/hexagons.min.css" />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/themify-icons/0.1.2/css/themify-icons.css" />
  <link rel="stylesheet" href="css/main.css" />
</head>

<body>
  <!-- ================ Start Header Area ================= -->
  <header class="default-header">
    <nav class="navbar navbar-expand-lg  navbar-light">
      <div class="container">
        <a class="navbar-brand" href="index.php">
          <img src="img/logo2.png" alt="" />
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="lnr lnr-menu"></span>
        </button>

        <div class="collapse navbar-collapse justify-content-end align-items-center" id="navbarSupportedContent">
          <ul class="navbar-nav">
             <?php				
				echo"<li><a href='index2.php'><font color='yellow'>";echo"Hi! ".$_SESSION['name']."</font>";echo"</a></li>";
            ?>
			 <li><a href="find.php">Find Institute</a></li>
			<li><a href="forum.php">Ask Question</a></li>
            <li><a href="papers.php">Sample Papers</a></li>
			<li><a href='changepass.php'>Change Password</a></li>
			<li><a href='logout.php'>Sign Out</a></li>";
          </ul>
        </div>
      </div>
    </nav>
  </header>
  <!-- ================ End Header Area ================= -->

  <!-- ================ start banner Area ================= -->
<section class="other-feature-area home-banner-area">		
<div class="whole-wrap">
		<div class="container">
		<div class="section-top-border"><br><br>
				<h3 class="mb-30"></h3>
				<div class="content">
				<?php
				$conn=mysqli_connect('localhost','root','','end');
				$query="Select id,path from toefl";
				$result = mysqli_query($conn, $query);
				$row=mysqli_fetch_array($result,MYSQLI_ASSOC);
				
  				
				while($row = $result->fetch_assoc()) {
					
				echo"	  <ul class='course-list'>
                                <li class='justify-content-between d-flex'>
                                    <h3 style='color:#FFFF00;'>".$row["path"]."</h3>
                                   <td><form action='download2.php' target='_blank' method='GET'><button class='btn btn-info btn-fill btn-wd' type='submit' name='file' value=".$row["path"].">Download</button></form></td>
                                </li><br><br>
						  </ul>						  
					";
				
				}
?>
                        </div>
			</div>
				</div>
			</div>
</section>
			

  
  
   <footer class="footer-area section-gap">
		<div class="container">
			<div class="row">
				<div class="col-lg-2 col-md-6 single-footer-widget">
					<h4>Find Institutes</h4>
					<ul>
						<li>Coaching Centers</li>
						<li>Colleges</li>
					</ul>
				</div>
				<div class="col-lg-2 col-md-6 single-footer-widget">
					<h4>Q & A Forum</h4>
					<ul>
						<li>Arts</li>
						<li>Commerce</li>
						<li>Biology</li>
						<li>Science & Technology</li>
					</ul>
				</div>
				<div class="col-lg-2 col-md-6 single-footer-widget">
					<h4>Sample Papers</h4>
					<ul>
						<li>IIT-JEE</li>
						<li>PMT</li>
						<li>CAT</li>
						<li>GATE</li>
					</ul>
				</div>
			</div>
			<div class="footer-bottom row align-items-center">
				<p class="footer-text m-0 col-lg-8 col-md-12">
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy; <script>document.write(new Date().getFullYear());</script> All rights reserved
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
				<div class="col-lg-4 col-md-12 footer-social">
					<a href="#"><i class="fa fa-facebook"></i></a>
					<a href="#"><i class="fa fa-twitter"></i></a>
				</div>
			</div>
		</div>
	</footer>

  <script src="js/vendor/jquery-2.2.4.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
    crossorigin="anonymous"></script>
  <script src="js/vendor/bootstrap.min.js"></script>
  <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
  <script src="js/jquery.ajaxchimp.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/parallax.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.sticky.js"></script>
  <script src="js/hexagons.min.js"></script>
  <script src="js/jquery.counterup.min.js"></script>
  <script src="js/waypoints.min.js"></script>
  <script src="js/jquery.nice-select.min.js"></script>
  <script src="js/main.js"></script>
</body>

</html>