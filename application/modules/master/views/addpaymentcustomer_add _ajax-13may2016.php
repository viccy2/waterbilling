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
						<th>S No</th>
						<th>Month</th>
						<th>Last Reading</th>
						<th>Amount</th>
					    <th>Action</th>
					</tr>
				</thead>
				<tbody>
				    <tr>
					<?php
					    $qty= 0;
					    foreach($amountrate as $amountrat => $amount){
							$per_unitvalue = $amount['per_unit'];
						}
						if(count($record) > 0){
							$i=1;
							foreach($record as $key => $row){ 
							
					?> 
								<td><?php echo $i; ?></td>
								<td><?php echo stripslashes($row['month_name'].'&nbsp'.$row['year']); ?></td>
								<td><?php echo stripslashes($row['reading']); ?></td>
								<!--<td><?php echo stripslashes($row['custer']); ?></td>-->
								<td><?php echo  $balance = $row['amount']; //$amo = $per_unitvalue * $balance; ?></td>
								<td></td>
								
								<!--<td>
								  <?php 
								  $id = stripslashes($row['customer_id']);
								  $mon_id = stripslashes($row['month']);
								  $result = $this->my_model->get_metercustomer_add_all_records($id,$mon_id);
								  if($result == 0){?>
									<input class="pay_button" id="paybutton_<?php echo $i;?>" data-pay-val-id="<?php echo $i; ?>" type="button" name="pay" value="Unpaid">  
								  <?php }else{?>
									  <input class="pay_button" id="paybutton_<?php echo $i;?>" data-pay-val-id="<?php echo $i; ?>" type="button" name="pay" value="Paid" <?php echo "disabled";?>>
								  <?php } ?>
									<!--<input class="pay_button" id="paybutton_<?php echo $i;?>" data-pay-val-id="<?php echo $i; ?>" type="button" name="pay" value="Pay" <?php if($row['balance'] == 0){echo "disabled";}?>>-->
								<!--</td>-->
								</td>
					</tr>	
                    					
						<?php 
						$i++; 
						$qty += $row['reading'];} 
						foreach($collectinfo as $key => $collet){ }?>
						
							<input type="hidden" name="monthid_<?php echo $i;?>" id="monthid_<?php echo $i;?>" value = "<?php echo $collet['month_id'];?>">
							<input type="hidden" name="month_<?php echo $i;?>" id="month_<?php echo $i;?>" value = "<?php echo $collet['month_name'];?>">
							<input type="hidden" name="year_<?php echo $i;?>" id="year_<?php echo $i;?>" value = "<?php echo $collet['year'];?>">
						   
						<?php 
						$amount_quantity = $qty * $per_unitvalue ; 
						$check_data = $this->my_model->check_customer_id($id);
						$balanace_amount = $qty * $per_unitvalue; 
							
						foreach($month_collectinfo as $key => $month_collect){} //print_r($month_collect);
						$balancet = $month_collect['reading']; $amotar = $per_unitvalue * $balancet; //print_r($balancet);
						$deep_bal = $balanace_amount - $amotar; 
						foreach($second_higest_radi as $key => $secon_hi){} 
						$second_read = $secon_hi['reading'];
						$consumed_unit_mul = $balancet - $second_read;
						$consumed_unit_get = $consumed_unit_mul * $per_unitvalue;
						//print_r($second_read);
						 
						?>
						
							<input type="hidden" name="prsentreadingamount_<?php echo $i;?>" id="prsentreadingamount_<?php echo $i;?>" value = "<?php echo $consumed_unit_get;?>">
							<input type="hidden" name="prsentreading_<?php echo $i;?>" id="prsentreading_<?php echo $i;?>" value = "<?php echo $month_collect['reading'];?>">
						
						<?php if($check_data == 0) { ?>
							
							 <input type="hidden" name="oldmeterid_<?php echo $i;?>" id="oldmeterid_<?php echo $i;?>" value = "<?php echo $second_read ; ?>">
						     <input type="hidden" name="balanceid_<?php echo $i;?>" id="balanceid_<?php echo $i;?>" value = "<?php echo $second_read;?>"> 
							
						<?php }else{
							 
							 if(count($reading) == 0){?>
						   
						      <input type="hidden" name="oldmeterid_<?php echo $i;?>" id="oldmeterid_<?php echo $i;?>" value = "0">
						      <input type="hidden" name="balanceid_<?php echo $i;?>" id="balanceid_<?php echo $i;?>" value = "0">    
							
						     <?php } else{
						          foreach($reading as $key =>$read ){ } ?>
						          
									<input type="hidden" name="oldmeterid_<?php echo $i;?>" id="oldmeterid_<?php echo $i;?>" value = "<?php echo $second_read;?>">
									<input type="hidden" name="balanceid_<?php echo $i;?>" id="balanceid_<?php echo $i;?>" value = "<?php echo $read['balance'] ;?>">    
					         <?php } ?>
							 
						<?php } ?>
						
					<thead>	
						<tr>
						   <th>&nbsp;</th>
							<th>&nbsp;</th>
							<th>&nbsp;</th>
							<th><?php //echo $qty; ?></th>
							<th>
							<?php  
							   $result = $this->my_model->get_addcustomer_count_all_records($id, $mon_id);
							   if($result == 0){?>
								  <input class="pay_button" id="paybutton_<?php echo $i;?>" data-pay-val-id="<?php echo $i; ?>" type="button" name="pay" value="Pay">
							   <?php } else {?>
								 <input class="pay_button" id="paybutton_<?php echo $i;?>" data-pay-val-id="<?php echo $i; ?>" type="button" name="pay" value="Paid" <?php echo 'disabled'; ?>>
							   <?php } ?>	
							<input type="hidden" name="total_<?php echo $i;?>" id="total_<?php echo $i;?>" value = "<?php echo $qty;?>">
							</th>
						</tr>	
					</thead>	
						<?php } else { ?>
					<tr>
							<div class="norecordes"> No Records Found</div>
					</tr>
					<?php } ?>   														
				</tbody>
			</table>
			 <input type="hidden" name="cusomer_id" id="cusomer_id" value = "<?php echo $id;?>">
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