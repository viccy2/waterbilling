<div class="">
	<div class="col-lg-12 col-sm-12 col-xs-12 col-md-12">
		<?php
            if(count($record) > 0){
                foreach($record as $key => $row){ 
						$id=$row['id'];
				}
			}
        ?>
		<div class="row"></div>
    </div>
			
	<div style="padding:20px; box-shadow: 0px 0px 3px 1px rgba(0,0,0,0.75);">
		<div class="table-responsive">
			<table class="table table-bordered">
				<thead>
					<tr>
					    <th></th>
						<th>S No</th>
						<th>Month</th>
						<th>Last Reading</th>
						<th>Amount</th>
					    <th>Action</th>
					</tr>
				</thead>
				<tbody>
				   
					<?php
					    $qty= 0;
					    foreach($amountrate as $amountrat => $amount){
							$per_unitvalue = $amount['per_unit'];
						}
						if(count($record) > 0){
							$i=1;
							foreach($record as $key => $row){
							$balance = $row['amount']; 
							$id = stripslashes($row['customer_id']);
							$mon_id = stripslashes($row['month']);
							$result = $this->my_model->get_metercustomer_add_all_records($id,$mon_id);
					if($result == 0){	
					?> 
					 <tr>
								<td>
								<?php if($result == 0){?>   
								<input type="checkbox" name="checkbox[]" id="<?php echo $i;?>" value="<?php echo  $i;?>" class="my_check" >
								<?php }else{?>
								<input type="checkbox" name="checkbox[]" id="<?php echo $i;?>" value="<?php echo  $i;?>" class="my_check" disabled>
								<?php } ?>
								</td>
								<td><?php echo $i; ?></td>
								<td><?php echo stripslashes($row['month_name'].'&nbsp'.$row['year']); ?>
								    <input type="hidden" name="previousreading_<?php echo $i;?>" id="previousreading_<?php echo $i;?>" value = "<?php echo  $row['previous_reading'];?>">
								    <input type="hidden" name="monthid_<?php echo $i;?>" id="monthid_<?php echo $i;?>" value = "<?php echo  $row['month'];?>">
									<input type="hidden" name="month_<?php echo $i;?>" id="month_<?php echo $i;?>" value = "<?php echo $row['month_name'];?>">
									<input type="hidden" name="year_<?php echo $i;?>" id="year_<?php echo $i;?>" value = "<?php echo $row['year'];?>">
									<input type="hidden" name="status_<?php echo $i;?>" id="status_<?php echo $i;?>" value = "<?php echo $row['status'];?>">
								</td>
								<td><?php echo stripslashes($row['reading']); ?>
								    <input type="hidden" name="reading_<?php echo $i;?>" id="reading_<?php echo $i;?>" value = "<?php echo  $row['reading'];?>">
									<input type="hidden" name="consumedunit_<?php echo $i;?>" id="consumedunit_<?php echo $i;?>" value = "<?php echo  $row['consumed'];?>">
								</td>
								<td><?php echo  $balance;?><input type="hidden" name="prsentamount_<?php echo $i;?>" id="prsentamount_<?php echo $i;?>" value = "<?php echo  $balance;?>">
								    <?php 
									   $count = $this->my_model->get_addcustomer_show_all_records($id,$mon_id);
									   foreach($count as $key => $cou){?>
										<input type="hidden" name="oldbalance_<?php echo $i;?>" id="oldbalance_<?php echo $i;?>" value = "<?php echo  $cou['balance'];?>">   
									<?php   }
									?>
								</td>
								<td>
								  <?php 
								  if($result == 0){?>
									<input class="pay_button"  id="paybutton_<?php echo $i;?>" data-pay-val-id="<?php echo $i; ?>" type="button" name="pay" value="Unpaid">  
								  <?php }else{?>
								    <input class="pay_button" id="paybutton_<?php echo $i;?>" data-pay-val-id="<?php echo $i; ?>" type="button" name="pay" value="Paid" <?php echo "disabled";?>>
								  <?php } ?>
								</td>
								
					</tr>	
					<?php $i++; } ?>
                    	
							<?php }?>
						
					<tr>
					    <th></th>
						<th></th>
						<th></th>
						<th></th>
						<th><input type="text" name="checkbox_cal" id="checkbox_cal" value = "0" readonly></th>
					    <th><input class="total_pay" id="total_pay"  type="button" name="total_pay" value="Total Pay" ></th>
					</tr>	
                    </form>						
					<?php	} else { ?>
					<tr>
							<div class="norecordes"> No Records Found</div>
					</tr>
						<?php }?>   														
				</tbody>
			</table>
			 <input type="hidden" name="cusomer_id_next" id="cusomer_id_next" value = "<?php echo $id;?>">
			 <input type="hidden" name="unit_d" id="unit_d" value = "<?php echo $per_unitvalue;?>">
			
		</div>
	</div>
</div>		
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

		<!-- Your GOOGLE ANALYTICS CODE Below -->
		<script type="text/javascript">
			var _gaq = _gaq || [];
			_gaq.push(['_setAccount', 'UA-XXXXXXXX-X']);
			_gaq.push(['_trackPageview']);
			
			(function() {
			var ga = document.createElement('script');
			ga.type = 'text/javascript';
			ga.async = true;
			ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(ga, s);
			})();
		</script>										
		
<script>
$('.my_check').change(function () {
	var id = $(this).attr('id');
	var presentVal = parseInt($('#prsentamount_' + id).val());
	var val = parseInt($('#checkbox_cal').val());
    if ($(this).is(':checked')) {
		val+=presentVal;
		$('#checkbox_cal').val(val);
		//$('.total_pay').prop("disabled", false); // Element(s) are now enabled.
	} else {
		val-=presentVal;
		$('#checkbox_cal').val(val);
		//$('.total_pay').prop("disabled", true); // Element(s) are now enabled.
	}	
});

/*$('.my_check').change(function () {
	var id = $(this).attr('id');
    var values = $('#checkbox_1:checked').map(function() {
        return this.value;
    }).get().add("");
    $('#yourAge_1').val(values);
});
*/
</script>