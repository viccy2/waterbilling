<!DOCTYPE html>
<html lang="en-us">
	<head>
		<meta charset="utf-8">
		<!--<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">-->

		<title> SmartAdmin </title>
		<meta name="description" content="">
		<meta name="author" content="">
			
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

		<!-- FAVICONS -->
		<link rel="shortcut icon" href="img/favicon/favicon.ico" type="image/x-icon">
		<link rel="icon" href="img/favicon/favicon.ico" type="image/x-icon">

		<!-- GOOGLE FONT -->
		<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,300,400,700">

	</head>
	
<!-- MAIN PANEL -->
		<div id="main" role="main">

			<!-- RIBBON -->
			<div id="ribbon">

				<span class="ribbon-button-alignment"> 
					<span id="refresh" class="btn btn-ribbon" data-action="resetWidgets" data-title="refresh"  rel="tooltip" data-placement="bottom" data-original-title="<i class='text-warning fa fa-warning'></i> Warning! This will reset all your widget settings." data-html="true">
						<i class="fa fa-refresh"></i>
					</span> 
				</span>

				<!-- breadcrumb -->
				<ol class="breadcrumb">
					<li><a href="<?php echo ADMIN_URL;?>">Home</a></li>
					<li><a href="<?php echo ADMIN_URL;?>addpaymentcustomer/">Meter Customer Bills</a></li>
					<li>Add</li>
				</ol>
				
			</div>
			<!-- END RIBBON -->

			<!-- MAIN CONTENT -->
			<div id="content">

				<div class="row">
					<div class="col-xs-12 col-sm-7 col-md-7 col-lg-4">
						<h1 class="page-title txt-color-blueDark"><i class="fa fa-pencil-square-o fa-fw"></i>add <span>>  Meter Customer Bills </span></h1>
					</div>
					<div class="col-xs-12 col-sm-5 col-md-5 col-lg-8">
						<ul id="sparks" class="">
							<li class="sparks-info">
								<h5> My Income <span class="txt-color-blue">$47,171</span></h5>
								<div class="sparkline txt-color-blue hidden-mobile hidden-md hidden-sm">
									
								</div>
							</li>
							<li class="sparks-info">
								<h5> Site Traffic <span class="txt-color-purple"><i class="fa fa-arrow-circle-up"></i>&nbsp;45%</span></h5>
								<div class="sparkline txt-color-purple hidden-mobile hidden-md hidden-sm">
									
								</div>
							</li>
							<li class="sparks-info">
								<h5> Site Orders <span class="txt-color-greenDark"><i class="fa fa-shopping-cart"></i>&nbsp;2447</span></h5>
								<div class="sparkline txt-color-greenDark hidden-mobile hidden-md hidden-sm">
									
								</div>
							</li>
						</ul>
					</div>
				</div>
				<!-- widget grid -->
				<section id="widget-grid" class="">

					<!-- row -->

					<div class="row">

						<!-- a blank row to get started -->
						<div class="col-sm-6 col-lg-12">
						

								<!-- your contents here -->
								<div class="panel panel-default">
									
									<div class="widget-body">
				
										<form class="form-horizontal" role="form" name="myform" id="myform" method="post" action="" enctype="multipart/form-data">
										  	
											<?php if($msg != ''){?>
											<div class="alert alert-block alert-success">
												<button type="button" class="close" data-dismiss="alert">
												<i class="icon-remove"></i>
												</button>
												<p>
													<i class="icon-ok"></i>
													<?php echo $msg?$msg:'';?>
												</p>
											</div>
											<?php } ?>	
											
											<fieldset>
														<legend>Meter Customer Bills -Add </legend>
														<div class="form-group">
															<label class="col-md-4 control-label">Search : </label>
															<div class="col-md-4">
																<input  class="form-control"  id="search_box_id" name="name" id="name" required/>
																<?php echo form_error('name'); ?>
															</div>
															<p style ="color:#428BCA">Search by Customer-Id, Phone, Email</p>
														</div>
														<div class="form-group">
															<div id="names">
															</div>
															<div id="emails">
															</div>
														</div>	
														<div class="form-group">
															<div id="mobile">
															</div>
															<div id="address">
															</div>
															<input type="hidden" name="customer_id" id="customer_id" value="<?php echo $this->input->post('customer_id'); ?>">
														</div>	
														<div class="col-xs-12" id="meterincomeDiv" style="margin-top: 13px; margin-bottom:20px;"></div> 
														<div style="clear:both"></div>
														<div id="hideclass" style="display:none; padding:20px; box-shadow: 0px 0px 3px 1px rgba(0,0,0,0.75);    margin: 14px;" >
															<div class="form-group" id="names">

															</div>
														
															<div class="form-group">
																<label class="col-md-4 control-label">Current Bill Amount : </label>
																<div class="col-md-4">
																	<div class="test_deep"><h1>&#8377;&nbsp;&nbsp;<span id="deepmala">0</span>/-</h1></div>
																	<input type="hidden"  class="form-control"  id="paid_total_amount" name="paid_total_amount"  value="<?php echo $this->input->post('paid_total_amount'); ?>" readonly ="readonly"/>
																</div>
															</div>
															<div class="form-group">
																<label class="col-md-4 control-label">  Old Balance : </label>
																<div class="col-md-4">
																	<input  type="text" class="form-control"  id="balence" name="balence" value="<?php echo $this->input->post('balence'); ?>" readonly ="readonly"/>
																	<?php echo form_error('balence'); ?>
																</div>
															</div>
															<div class="form-group">
																<label class="col-md-4 control-label">Total Amount : </label>
																<div class="col-md-4">
																	<div class="test_deep"><h1>&#8377;&nbsp;&nbsp;<span id="deeksha">0</span>/-</h1></div>
																	<input type="hidden"  class="form-control"  id="final_total_amount" name="final_total_amount"  value="<?php echo $this->input->post('final_total_amount'); ?>" readonly ="readonly"/>
																</div>
															</div>
															<div class="form-group">
																<label class="col-md-4 control-label"> Aqrin Hore : </label>
																<div class="col-md-4">
																	<input type="text"  class="form-control"  id="current_reading" name="current_reading"  value="<?php echo $this->input->post('current_reading'); ?>" readonly ="readonly"/>
																	<?php echo form_error('current_reading'); ?>
																</div>
															</div>
															<div class="form-group">
																<label class="col-md-4 control-label"> Old Reading : </label>
																<div class="col-md-4">
																	<input type="text"  class="form-control"  id="oldmeter" name="oldmeter"  value="<?php echo $this->input->post('oldmeter'); ?>" readonly ="readonly"/>
																	<?php echo form_error('current_reading'); ?>
																</div>
															</div>
															<div class="form-group">
																<label class="col-md-4 control-label"> Month : </label>
																<div class="col-md-4">
																	<input  type="text" class="form-control" id="month_name" name="month_name" value="" readonly ="readonly"/>
																	<input  type="hidden" class="form-control" id="month" name="month" value="<?php echo $this->input->post('month'); ?>" readonly ="readonly"/>
																	
																	<?php echo form_error('month'); ?>
																</div>
															</div>
															
															<div class="form-group">
																<label class="col-md-4 control-label">  Year : </label>
																<div class="col-md-4">
																	<input  type="text"  class="form-control"  id="year" name="year" value="<?php echo $this->input->post('year'); ?>" readonly ="readonly"/>
																	<?php echo form_error('year'); ?>
																</div>
															</div>
															
														
															<!--<div class="form-group">
																<label class="col-md-4 control-label"> Aqrin dambe : </label>
																<div class="col-md-4">
																	<input  type="text"  class="form-control" id="aftermeter" name="aftermeter" value="<?php echo $this->input->post('aftermeter'); ?>" required/>
																	<?php echo form_error('aftermeter'); ?>
																</div>
															</div>
															
															-->
														
															<!--<div class="form-group">
																<label class="col-md-4 control-label"> Total Amount : </label>
																<div class="col-md-4">
																	<input   type="text"  class="form-control"  id="total_amount" name="total_amount"  value="<?php echo $this->input->post('total_amount'); ?>" required readonly ="readonly"/>
																	<?php echo form_error('total_amount'); ?>
																</div>
															</div>-->
															
															<div class="form-group">
																<label class="col-md-4 control-label"> Pay Amount :</label>
																<div class="col-md-4">
																	<input  type="text"  class="form-control"  id="pay_amount" name="pay_amount"  value="<?php echo $this->input->post('pay_amount'); ?>" required/>
																	<?php echo form_error('pay_amount'); ?>
																</div>
															</div>
													
													</fieldset>
													</div>

														<div class="form-actions">
															<div class="row">
																<div class="col-md-12">
																	
																	 <a href="<?php echo ADMIN_URL;?>addpaymentcustomer" class="btn btn-default">Cancel</a>
																	<input type="submit" class="btn btn-primary" id="add_button" name="add" id="add" value="Add">
																</div>
															</div>
														</div>
										</form>
				
									</div>
								    
								
								</div>	
						</div>
					</div>
                     
						
					<!-- end row -->

				</section>
				<!-- end widget grid -->

					

				</section>
				<!-- end widget grid -->

			</div>
			<!-- END MAIN CONTENT -->

		</div>
		<!-- END MAIN PANEL -->
		

		<?php include('footer.php');?>

	</body>

</html>

<!-- PAGE RELATED PLUGIN(S) -->
		<script src="<?php echo base_url();?>js/plugin/datatables/jquery.dataTables.min.js"></script>
		<script src="<?php echo base_url();?>js/plugin/datatables/dataTables.colVis.min.js"></script>
		<script src="<?php echo base_url();?>js/plugin/datatables/dataTables.tableTools.min.js"></script>
		<script src="<?php echo base_url();?>js/plugin/datatables/dataTables.bootstrap.min.js"></script>
		<script src="<?php echo base_url();?>js/plugin/datatable-responsive/datatables.responsive.min.js"></script>
		<script type="text/javascript">
		
		// DO NOT REMOVE : GLOBAL FUNCTIONS!
		
		$(document).ready(function() {
			
			pageSetUp();
			
			/* // DOM Position key index //
		
			l - Length changing (dropdown)
			f - Filtering input (search)
			t - The Table! (datatable)
			i - Information (records)
			p - Pagination (paging)
			r - pRocessing 
			< and > - div elements
			<"#id" and > - div with an id
			<"class" and > - div with a class
			<"#id.class" and > - div with an id and class
			
			Also see: http://legacy.datatables.net/usage/features
			*/	
	
			/* BASIC ;*/
				var responsiveHelper_dt_basic = undefined;
				var responsiveHelper_datatable_fixed_column = undefined;
				var responsiveHelper_datatable_col_reorder = undefined;
				var responsiveHelper_datatable_tabletools = undefined;
				
				var breakpointDefinition = {
					tablet : 1024,
					phone : 480
				};
	
				$('#dt_basic').dataTable({
					"sDom": "<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>"+
						"t"+
						"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>",
					"autoWidth" : true,
			        "oLanguage": {
					    "sSearch": '<span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>'
					},
					"preDrawCallback" : function() {
						// Initialize the responsive datatables helper once.
						if (!responsiveHelper_dt_basic) {
							responsiveHelper_dt_basic = new ResponsiveDatatablesHelper($('#dt_basic'), breakpointDefinition);
						}
					},
					"rowCallback" : function(nRow) {
						responsiveHelper_dt_basic.createExpandIcon(nRow);
					},
					"drawCallback" : function(oSettings) {
						responsiveHelper_dt_basic.respond();
					}
				});
	
			/* END BASIC */
			
			/* COLUMN FILTER  */
		    var otable = $('#datatable_fixed_column').DataTable({
		    	//"bFilter": false,
		    	//"bInfo": false,
		    	//"bLengthChange": false
		    	//"bAutoWidth": false,
		    	//"bPaginate": false,
		    	//"bStateSave": true // saves sort state using localStorage
				"sDom": "<'dt-toolbar'<'col-xs-12 col-sm-6 hidden-xs'f><'col-sm-6 col-xs-12 hidden-xs'<'toolbar'>>r>"+
						"t"+
						"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>",
				"autoWidth" : true,
				"oLanguage": {
					"sSearch": '<span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>'
				},
				"preDrawCallback" : function() {
					// Initialize the responsive datatables helper once.
					if (!responsiveHelper_datatable_fixed_column) {
						responsiveHelper_datatable_fixed_column = new ResponsiveDatatablesHelper($('#datatable_fixed_column'), breakpointDefinition);
					}
				},
				"rowCallback" : function(nRow) {
					responsiveHelper_datatable_fixed_column.createExpandIcon(nRow);
				},
				"drawCallback" : function(oSettings) {
					responsiveHelper_datatable_fixed_column.respond();
				}		
			
		    });
		    
		    // custom toolbar
		    $("div.toolbar").html('<div class="text-right"><img src="img/logo.png" alt="SmartAdmin" style="width: 111px; margin-top: 3px; margin-right: 10px;"></div>');
		    	   
		    // Apply the filter
		    $("#datatable_fixed_column thead th input[type=text]").on( 'keyup change', function () {
		    	
		        otable
		            .column( $(this).parent().index()+':visible' )
		            .search( this.value )
		            .draw();
		            
		    } );
		    /* END COLUMN FILTER */   
	    
			/* COLUMN SHOW - HIDE */
			$('#datatable_col_reorder').dataTable({
				"sDom": "<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-6 hidden-xs'C>r>"+
						"t"+
						"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-sm-6 col-xs-12'p>>",
				"autoWidth" : true,
				"oLanguage": {
					"sSearch": '<span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>'
				},
				"preDrawCallback" : function() {
					// Initialize the responsive datatables helper once.
					if (!responsiveHelper_datatable_col_reorder) {
						responsiveHelper_datatable_col_reorder = new ResponsiveDatatablesHelper($('#datatable_col_reorder'), breakpointDefinition);
					}
				},
				"rowCallback" : function(nRow) {
					responsiveHelper_datatable_col_reorder.createExpandIcon(nRow);
				},
				"drawCallback" : function(oSettings) {
					responsiveHelper_datatable_col_reorder.respond();
				}			
			});
			
			/* END COLUMN SHOW - HIDE */
	
			/* TABLETOOLS */
			$('#datatable_tabletools').dataTable({
				
				// Tabletools options: 
				//   https://datatables.net/extensions/tabletools/button_options
				"sDom": "<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-6 hidden-xs'T>r>"+
						"t"+
						"<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-sm-6 col-xs-12'p>>",
				"oLanguage": {
					"sSearch": '<span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>'
				},		
		        "oTableTools": {
		        	 "aButtons": [
		             "copy",
		             "csv",
		             "xls",
		                {
		                    "sExtends": "pdf",
		                    "sTitle": "SmartAdmin_PDF",
		                    "sPdfMessage": "SmartAdmin PDF Export",
		                    "sPdfSize": "letter"
		                },
		             	{
	                    	"sExtends": "print",
	                    	"sMessage": "Generated by SmartAdmin <i>(press Esc to close)</i>"
	                	}
		             ],
		            "sSwfPath": "js/plugin/datatables/swf/copy_csv_xls_pdf.swf"
		        },
				"autoWidth" : true,
				"preDrawCallback" : function() {
					// Initialize the responsive datatables helper once.
					if (!responsiveHelper_datatable_tabletools) {
						responsiveHelper_datatable_tabletools = new ResponsiveDatatablesHelper($('#datatable_tabletools'), breakpointDefinition);
					}
				},
				"rowCallback" : function(nRow) {
					responsiveHelper_datatable_tabletools.createExpandIcon(nRow);
				},
				"drawCallback" : function(oSettings) {
					responsiveHelper_datatable_tabletools.respond();
				}
			});
			
			/* END TABLETOOLS */
		
		})

		</script>
		<script type="text/javascript">
		
		function customer_type_values(){
			$("#showcustomers").hide();			
			if($("#customer_type").val()=='monthlycustomer'){
				$("#showcustomers").show();
			}
			else if($("#customer_type").val()=='metercustomer'){
				$("#showcustomers").hide();
			}
		}
		function myFunction(){
            
			var customer = $('#cusomer_id').val();
			var monthid = $('#monthid_'+paybtnid).val();
			var month = $('#month').val();
			alert(customer);
			var year = $('#year').val();
			//if(customer != '' && month != '' && year != ''){
				var url = '<?php echo ADMIN_URL;?>addpaymentcustomer/monthlyreceipt/'+customer+'/'+month+'/'+year;
				window.open( url , "popupWindow", "width=1024,height=600,scrollbars=yes");	
			//}
        }
	
		</script>
		
			
<script>
$('#search_box_id').on('change', function() {
	
	var id = $(this).val();
	$.ajax({
                type: 'POST',
                url: '<?php echo ADMIN_URL;?>addpaymentcustomer/get_custmer_all_data/',
                data: {id: id},
                success: function(data) {
					$("#meterincomeDiv").html(data);
					$('#hideclass').show();
					
                }
            });
});	
$(document).on('click','.pay_button',function(e){
	
	var buttonid = $(this).attr('id');
	var paybtnid = $(this).data('pay-val-id');
	
    var oldmeter_name = $('#oldmeterid_'+paybtnid).val();
	var balanace_name = $('#balanceid_'+paybtnid).val();
	var pay_roll_id = $('#hid_payamount_roll').val();
	var monthname = $('#month_'+paybtnid).val();
	var monthid = $('#monthid_'+paybtnid).val();
	var year = $('#year_'+paybtnid).val();
	var customer = $('#cusomer_id').val();
	var lastamount = $('#prsentreadingamount_'+paybtnid).val();
	var lastreading = $('#prsentreading_'+paybtnid).val();
	
	var new_total = parseInt(balanace_name)+parseInt(lastamount);
	
	$('#deeksha').text(new_total);
	$('#final_total_amount').val(new_total);
	$("#paid_total_amount").val(lastamount);
	$("#current_reading").val(lastreading);
	$('#customer_id').val(customer);
	$('#oldmeter').val(oldmeter_name);
	$('#balence').val(balanace_name);
	
	$('#deepmala').text(lastamount);
	$('#month_name').val(monthname);
	$('#month').val(monthid);
	$('#year').val(year);
	
	//$("#process_payment_amount_text").html("testing <b>1 2 3</b>");
	
	 e.preventDefault();

        $("body, html").animate({ 
            scrollTop: $( $('#custom-payment-block') ).offset().top 
        }, 600);
	
});

//$('#add_button').on('click', function(){

$('#search_box_id').on('change', function() {
	
	var id = $(this).val();
	$.ajax({
                type: 'POST',
                url: '<?php echo ADMIN_URL;?>addpaymentcustomer/get_custmer_name/',
                data: {id: id},
                success: function(data) {
					//alert(data);
					$("#names").html(data);
					
                }
            });
});	
$('#search_box_id').on('change', function() {
	
	var id = $(this).val();
	$.ajax({
                type: 'POST',
                url: '<?php echo ADMIN_URL;?>addpaymentcustomer/get_custmer_email/',
                data: {id: id},
                success: function(data) {
					//alert(data);
					$("#emails").html(data);
					
                }
            });
});	
$('#search_box_id').on('change', function() {
	
	var id = $(this).val();
	$.ajax({
                type: 'POST',
                url: '<?php echo ADMIN_URL;?>addpaymentcustomer/get_custmer_mobile/',
                data: {id: id},
                success: function(data) {
					//alert(data);
					$("#mobile").html(data);
					
                }
            });
});	
$('#search_box_id').on('change', function() {
	
	var id = $(this).val();
	$.ajax({
                type: 'POST',
                url: '<?php echo ADMIN_URL;?>addpaymentcustomer/get_custmer_address/',
                data: {id: id},
                success: function(data) {
					//alert(data);
					$("#address").html(data);
					
                }
            });
});
/*$('#search_box_id').on('change', function() {
	
	var id = $(this).val();
	$.ajax({
                type: 'POST',
                url: '<?php echo ADMIN_URL;?>addpaymentcustomer/tchtemailcheck/',
                data: {id: id},
                success: function(data) {
					//alert(data);
					var op = data;
					var op_split = op.split('-');
					$("#oldmeter").val(op_split[0]);  
					$("#balence").val(op_split[1]);
					
                }
            });

});	*/

$('#aftermeter').on('change', function() {
	
	var id = $(this).val();
	var oldmeter = $("#oldmeter").val();
	$.ajax({
                type: 'POST',
                url: '<?php echo ADMIN_URL;?>addpaymentcustomer/get_calculation/',
                data: {id: id, oldmeter: oldmeter},
                success: function(data) {
					//alert(data);
					$("#total_amount").val(data);
					
                }
            });

});	
</script>
