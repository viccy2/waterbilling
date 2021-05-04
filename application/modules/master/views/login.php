<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>Login Page</title>
		<meta name="description" content="User login page" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<!-- #CSS Links -->
		<!-- Basic Styles -->
		<link rel="stylesheet" type="text/css" media="screen" href="<?php echo base_url();?>css/bootstrap.css">
		<link rel="stylesheet" type="text/css" media="screen" href="<?php echo base_url();?>css/font-awesome.min.css">

		<!-- SmartAdmin Styles : Caution! DO NOT change the order -->
		<link rel="stylesheet" type="text/css" media="screen" href="<?php echo base_url();?>css/custom.css">
		<!-- <link rel="stylesheet" type="text/css" media="screen" href="<?php echo base_url();?>css/smartadmin-production.min.css">
		<link rel="stylesheet" type="text/css" media="screen" href="<?php echo base_url();?>css/smartadmin-skins.min.css"> -->

		<!-- SmartAdmin RTL Support -->
		<!-- <link rel="stylesheet" type="text/css" media="screen" href="<?php echo base_url();?>css/smartadmin-rtl.min.css">  -->

		<!-- We recommend you use "your_style.css" to override SmartAdmin
		     specific styles this will also ensure you retrain your customization with each SmartAdmin update.
		<link rel="stylesheet" type="text/css" media="screen" href="css/your_style.css"> -->

		<!-- Demo purpose only: goes with demo.js, you can delete this css when designing your own WebApp -->
		<!-- <link rel="stylesheet" type="text/css" media="screen" href="<?php echo base_url();?>css/demo.min.css"> -->

		<!-- #FAVICONS -->
		<link rel="shortcut icon" href="<?php echo base_url();?>img/favicon/favicon.ico" type="image/x-icon">
		<link rel="icon" href="<?php echo base_url();?>img/favicon/favicon.ico" type="image/x-icon">

		<!-- #GOOGLE FONT -->
		<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,300,400,700">
		 <style type="text/css">
     .containers{
         background: url(<?php echo base_url();?>img/login.png)   fixed;
    background-size: cover;
    -moz-background-size: cover;
    -webkit-background-size: cover;
    -o-background-size: cover;
    width: 100%;
    
    overflow: hidden;
      }
    </style>
	</head>
	<body class="animated fadeInDown" >

		<!--<header id="header">

			<div id="logo-group">
				<span id="logo"> <img src="img/logo.png" alt="SmartAdmin"> </span>
			</div>

			

		</header>--><br/><br/><br/><br/>

		<div id="main" role="main" style="background-color:green">

			<!-- MAIN CONTENT -->
			<div id="content" class="container">

		<div class="page login-page">
		<div class="containers" >
        <div class="form-outer text-center d-flex align-items-center" >
          <div class="form-inner" style="width:100%;background: -webkit-linear-gradient(top,white,rgba(0, 0, 0, 0.15));opacity:0.9;"> 	
					  <div class="logo text-uppercase"><span></span><strong style="color:#1298D4;">Login</strong></div>
            <p style="color:#1298D4">  Please Enter Your Information</p>
				
						
						<form action="" method="post" id="login-form" class="smart-form client-form">
							   <header>
									<?php if( $this->session->flashdata( 'message' ) ) { ?>
                                           <!--  <span style="color:#F00; font-size:12px; font-weight:bold; text-align:center;">
                                                <?php echo $this->session->flashdata( 'message' ); ?>
                                            </span> --> 
                 <div class='alert alert-danger alert-dismissible fade show' role='alert'>
                 <a href='#' class='close' data-dismiss='alert' aria-label='Close'>
                  <span aria-hidden='true'>&times;</span>
                   </a><?php echo $this->session->flashdata( 'message' ); ?>
               	</div>
                                        <?php  }else if( $this->session->flashdata( 'messages' ) ) { ?>
                                           <!--  <span style="color:green; font-size:12px; font-weight:bold; text-align:center;">
                                                <?php echo $this->session->flashdata( 'messages' ); ?>
                                            </span>  -->
                 <div class='alert alert-danger alert-dismissible fade show' role='alert'>
                 <a href='#' class='close' data-dismiss='alert' aria-label='Close'>
                  <span aria-hidden='true'>&times;</span>
                   </a><?php echo $this->session->flashdata( 'messages' ); ?>
               	</div>
                                        <?php  }else{ ?>
                                          
                                        <?php } //print_r($this->session->all_userdata());?>
										<?php if(isset($error)) echo $error;?>
								</header>
								
							
									
			<section >
				<div class="form-group-material">
                <input id="register-email" type="text" name="username" id="username" value="<?php echo set_value('username'); ?>"  required  class="input-material">
                <label for="register-email" class="label-material" style="color:#1298D4">Username</label>
              </div>
			</section>

			<section>
				<div class="form-group-material">
                <input id="register-email" type="password" name="password" id="password" value="<?php echo set_value('password'); ?>" required  class="input-material">
                <label for="register-email" class="label-material" style="color:#1298D4">Password</label>
              </div>
			</section>	
			<section style="float:left">
				<div class="form-group-material">
				<label class="checkbox" style="color:#00A2E2;">
				<input type="checkbox" name="remember" checked="">
				<i></i>Stay signed in</label>
			</div>
			</section>	<br><br>

			<div class="form-group " style="float:right;">
                <input id="submit" name="submit" type="submit" value="Login" class="btn" style="background-color:#00A2E2;color:white">
              </div>					
									
											
											<!-- <b class="tooltip tooltip-top-right"><i class="fa fa-lock txt-color-teal"></i> Enter your password</b> -->
										
									

									
							
					
            </form><br><br>
            <small>Forgot Password? </small><a href="<?php echo site_url()?>/master/forgot_password" class="signup">Click Here</a>
								
						

					
						
			</div>		
			</div>
			</div>	
			</div>
			</div>

		</div>

		<!--================================================== -->	
        <!--================================================== -->	

		<!-- PACE LOADER - turn this on if you want ajax loading to show (caution: uses lots of memory on iDevices)-->
		<script src="<?php echo base_url();?>js/plugin/pace/pace.min.js"></script>

	    <!-- Link to Google CDN's jQuery + jQueryUI; fall back to local -->
	    <script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
		<script> if (!window.jQuery) { document.write('<script src="js/libs/jquery-2.1.1.min.js"><\/script>');} </script>

	    <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
		<script> if (!window.jQuery.ui) { document.write('<script src="js/libs/jquery-ui-1.10.3.min.js"><\/script>');} </script>

		<!-- IMPORTANT: APP CONFIG -->
		<script src="<?php echo base_url();?>js/app.config.js"></script>

		<!-- JS TOUCH : include this plugin for mobile drag / drop touch events 		
		<script src="js/plugin/jquery-touch/jquery.ui.touch-punch.min.js"></script> -->

		<!-- BOOTSTRAP JS -->		
		<script src="<?php echo base_url();?>js/bootstrap/bootstrap.min.js"></script>

		<!-- JQUERY VALIDATE -->
		<script src="<?php echo base_url();?>js/plugin/jquery-validate/jquery.validate.min.js"></script>
		
		<!-- JQUERY MASKED INPUT -->
		<script src="<?php echo base_url();?>js/plugin/masked-input/jquery.maskedinput.min.js"></script>
		<script src="<?php echo base_url();?>js/front.js"></script>
		<script src="<?php echo base_url();?>js/jquery.js"></script>
		<script src="<?php echo base_url();?>js/validate.js"></script>
		<script src="<?php echo base_url();?>js/concat.js"></script>
		<script src="<?php echo base_url();?>js/bootstrap.js"></script>
		<!--[if IE 8]>
			
			<h1>Your browser is out of date, please update your browser by going to www.microsoft.com/download</h1>
			
		<![endif]-->
		<!-- MAIN APP JS FILE -->
		<script src="<?php echo base_url();?>js/app.min.js"></script>
		
		<script type="text/javascript">
			runAllForms();

			// $(function() {
			// 	// Validation
			// 	$("#login-form").validate({
			// 		// Rules for form validation
			// 		rules : {
			// 			username : {
			// 				required : true
			// 			},
			// 			password : {
			// 				required : true,
			// 				minlength : 3,
			// 				maxlength : 20
			// 			}
			// 		},

			// 		// Messages for form validation
			// 		messages : {
			// 			username : {
			// 				required : 'Please enter username'
			// 			},
			// 			password : {
			// 				required : 'Please enter your password'
			// 			}
			// 		},

			// 		// Do not change code below
			// 		errorPlacement : function(error, element) {
			// 			error.insertAfter(element.parent());
			// 		}
			// 	});
			// });
		</script>

	</body>
</html>
	
	
	
	
