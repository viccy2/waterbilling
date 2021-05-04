<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>Login Page</title>
		<meta name="description" content="User login page" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<?php include("include.php");?>
		<!-- #CSS Links -->
		<!-- Basic Styles -->
		<link rel="stylesheet" type="text/css" media="screen" href="<?php echo base_url();?>css/bootstrap.css">
		<link rel="stylesheet" type="text/css" media="screen" href="<?php echo base_url();?>css/font-awesome.min.css">

		<!-- SmartAdmin Styles : Caution! DO NOT change the order -->
		<link rel="stylesheet" type="text/css" media="screen" href="<?php echo base_url();?>css/custom.css">
 <style type="text/css">
     .containers{
         background: url(<?php echo base_url();?>img/b.png)   fixed;
    background-size: cover;
    -moz-background-size: cover;
    -webkit-background-size: cover;
    -o-background-size: cover;
    width: 100%;
    
    overflow: hidden;
      }
    </style>
	</head>
	<body class="animated fadeInDown">

		

		<div id="main" role="main">

			<!-- MAIN CONTENT -->
			<div id="content" class="container">

			<div class="page login-page">
		<div class="containers" >
        <div class="form-outer text-center d-flex align-items-center" >
          <div class="form-inner" style="width:100%;background: -webkit-linear-gradient(top,white,rgba(0, 0, 0, 0.15));opacity:0.9;"> 	
					  <div class="logo text-uppercase"><span></span><strong style="color:#1298D4;">Reset Password</strong></div>
            <p style="color:#1298D4">	Enter your email to receive instructions</p>
				
						
						<form name="forgot-form" id="forgot-form" action="<?php echo site_url()?>/master/forgot_password" method="post" class="smart-form client-form">
							  <div>
									<?php if( $this->session->flashdata( 'message' ) ) : ?>
                 <div class='alert alert-danger alert-dismissible fade show' role='alert'>
                 <a href='#' class='close' data-dismiss='alert' aria-label='Close'>
                  <span aria-hidden='true'>&times;</span>
                   </a><?php echo $this->session->flashdata( 'message' ); ?>
               	</div>
                                        <?php  else: ?>
										
                                        <?php endif; //print_r($this->session->all_userdata());?>
										<?php if(isset($error)) echo $error;?>
								</div>
							
								
							
									
			<section >
				<div class="form-group-material">
                <input type="email" name="email" id="email" value="<?php echo set_value('email'); ?>"   required  class="input-material">
                <label for="register-email" class="label-material" style="color:#1298D4">Enter your Email</label>
              </div>
			</section>

				
				<br><br>

			<div class="form-group " style="float:right;">
                <input type="submit" name="forgot" id="submit" class="btn " value="Send Me!" style="background-color:#00A2E2;color:white">
              </div>					
									
											
											
									

									
							
					
            </form><br><br>
            <small>Already have an account? </small><a href="<?php echo site_url()?>/master/" class="signup">Click Here</a>
								
						

					
						
			</div>		
			</div>
			</div>	
			</div>
			</div>

		</div>

		<!--================================================== -->	
        
		<script type="text/javascript">
			runAllForms();

			$(function() {
				// Validation
				$("#forgot-form").validate({
					// Rules for form validation
					rules : {
						email : {
							required : true,
							email : true
						}
						
					},

					// Messages for form validation
					messages : {
						email : {
							required : 'Please enter your email address',
							email : 'Please enter a VALID email address'
						}
					},

					// Do not change code below
					errorPlacement : function(error, element) {
						error.insertAfter(element.parent());
					}
				});
			});
		</script>
		<script src="../js/front.js"></script>
		<script src="../js/jquery.js"></script>
		<script src="../js/validate.js"></script>
		<script src="../js/concat.js"></script>
		<script src="../js/bootstrap.js"></script>
	</body>
</html>
	
	
	
	
