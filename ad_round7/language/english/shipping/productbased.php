<?php
//==============================================================================
// Product-Based Shipping v155.1
// 
// Author: Clear Thinking, LLC
// E-mail: johnathan@getclearthinking.com
// Website: http://www.getclearthinking.com
//==============================================================================

$name = 'Product';
$plural = 'products';
$type = 'Shipping';
$version = 'v155.1';

// Heading
$_['heading_title']					= $name . '-Based ' . $type;

// Buttons
$_['button_save_exit']				= 'Save & Exit';
$_['button_save_keep_editing']		= 'Save & Keep Editing';
$_['button_show_examples']			= 'Show Examples';
$_['button_add_row']				= 'Add Rate';

// Extension Settings
$_['entry_status']					= 'Status:';
$_['help_status']					= 'The status for the extension as a whole.';
$_['entry_sort_order']				= 'Sort Order:';
$_['help_sort_order']				= 'The sort order for the extension, relative to other ' . strtolower($type) . ' extensions.';
$_['entry_heading']					= 'Heading:';
$_['help_heading']					= 'The heading under which these shipping options will appear. HTML is supported.';
$_['entry_round_final_costs']		= 'Round Final Costs to the Nearest:';
$_['help_round_final_costs']		= 'If you want to round the final calculated charges, enter the rounding value to use. For example, to round to the nearest quarter of a dollar, enter 0.25';

// General Settings
$_['entry_general_settings']		= 'General Settings';
$_['help_general_settings']			= '
	<em>Title</em><br />
	Set the rate title for each language. HTML is supported.<br /><br />
	<em>Sort Order</em><br />
	Set the order in which the rates will appear. Rates with the same sort order will be combined using the "Multi Rate Calculation" setting. Make sure you set the same Title and Multi Rate Calculation for rates with the same Sort Order.<br /><br />
	<em>Multi Rate Calculation</em><br />
	Set the calculation used to combine rates of the same Sort Order.<br /><br />
	<em>Tax Class</em><br />
	Optionally select a tax class for the rate. If applying a tax class, be sure to set the Sort Order for the extension to something lower than the "Taxes" Order Total.<br /><br />'
	. ($type == 'Shipping' ? '' : '
	<em>Geo Zone Comparison</em><br />
	Select whether to compare geo zones against the customer\'s shipping address or payment address. Until the customer begins the checkout process or uses the shipping estimator, the customer\'s default address will be used if logged in, and the store\'s default address will be used if not logged in.<br /><br />
	') . '
	<em>Compare Against</em><br />
	Select whether to compare values against the entire cart, or just applicable items in the selected ' . $plural . '.<br /><br />
	<em>Value for Total</em><br />
	Select the value used for Total-Based comparisons and percentage charges: the cart\'s Pre-Discounted Sub-Total (using all products\' original prices instead of Special or Discount prices), Sub-Total, Taxed Sub-Total, or Total (at the relative Sort Order of ' . ($type == 'Shipping' ? 'the "Shipping" Order Total). Products that do not require shipping are NOT included in the sub-total or taxed sub-total.' : 'this extension).');
$_['text_title']					= 'Title';
$_['text_internal_notes']			= 'Internal Notes';
$_['text_tax_class']				= 'Tax Class';
$_['text_sort_order']				= 'Sort Order';
$_['text_multi_rate_calculation']	= 'Multi Rate Calculation';
$_['text_average']					= 'Average';
$_['text_highest']					= 'Highest';
$_['text_lowest']					= 'Lowest';
$_['text_sum']						= 'Sum';
$_['text_geo_zone_comparison']		= 'Geo Zone Comparison';
$_['text_shipping_address']			= 'Shipping Address';
$_['text_payment_address']			= 'Payment Address';
$_['text_compare_against']			= 'Compare Against';
$_['text_entire_cart']				= 'Entire Cart';
$_['text_applicable_items']			= 'Applicable Items';
$_['text_value_for_total']			= 'Value for Total';
$_['text_prediscounted_subtotal']	= 'Pre-Discounted Sub-Total';
$_['text_subtotal']					= 'Sub-Total';
$_['text_taxed_subtotal']			= 'Taxed Sub-Total';
$_['text_total']					= 'Total';

// Order Criteria
$_['entry_order_criteria']			= 'Order Criteria';
$_['help_order_criteria']			= '
	<em>Stores</em><br />
	Select the stores for which the rate is available.<br /><br />
	<em>Currencies</em><br />
	Select the currencies for which the rate is available. "Convert Unselected" will automatically convert the cart total for unselected currencies, based on your currency rates.<br /><br />
	<em>Customer Groups</em><br />
	Select the customer groups for which the rate is available. "Not Logged In" will make the rate available to any customer not currently logged in.<br /><br />
	<em>Geo Zones</em><br />
	Select the geo zones for which the rate is available. "All Other Zones" will make the rate available to all locations not within a geo zone.';
$_['text_stores']					= 'Stores';
$_['text_currencys']				= 'Currencies';
$_['text_convert_unselected']		= '<em>Convert Unselected</em>';
$_['text_customer_groups']			= 'Customer Groups';
$_['text_not_logged_in']			= '<em>Not Logged In</em>';
$_['text_geo_zones']				= 'Geo Zones';
$_['text_all_other_zones']			= '<em>All Other Zones</em>';

// Cart Criteria
$_['entry_cart_criteria']			= 'Cart Criteria';
$_['help_cart_criteria']			= '
	<em>Add</em><br />
	Optionally enter an additional factor (positive or negative, decimal or percentage) to be added to the cart values before calculations occur. Leave the field blank to have no adjustment on that value.<br /><br />
	<em>Min / Max</em><br />
	Optionally enter minimum and/or maximum values the cart must have for the rate to be enabled. Leave fields blank to have no restrictions on that criteria.<br /><br />
	<em>Postcodes</em><br />
	Enter postcode ranges using hyphens, separated by commas. For example, to restrict the rate to postcodes starting with 902 and CX, you would enter 902-90299, CX-CXZZZ.<br /><br />
	<em>Postcode Format</em><br />
	Select whether to read the postcode entered by the customer in a particular format.<br /><br />
	<em>Dates</em><br />
	Enter the starting and ending date for the rate. Dates are inclusive, so if you set it to end on the 15th of a month, that will be the last day it is active.';
$_['text_add']						= 'Add';
$_['text_min']						= 'Min';
$_['text_max']						= 'Max';
$_['text_length']					= 'Item Length';
$_['text_width']					= 'Item Width';
$_['text_height']					= 'Item Height';
$_['text_item']						= 'Item';
$_['text_volume']					= 'Volume';
$_['text_weight']					= 'Weight';
$_['text_postcode']					= 'Postcode';
$_['text_postcode_format']			= 'Postcode Format';
$_['text_uk_format']				= 'UK Format';
$_['text_date_start']				= 'Date Start';
$_['text_date_end']					= 'Date End';

// Product Criteria
$_['entry_product_criteria']		= ucfirst($plural);
$_['help_product_criteria']			= '
	<em>Products</em><br />
	Select the products that cart products need to match for the rate to be enabled. Disabled products are marked as such.<br /><br />
	<em>Adding / Removing Products</em>
	<ol style="margin-top: 0; padding-left: 15px">
	<li>Click the gear icon above any product box. A dialog will appear that will scroll with the page.</li>
	<li>Select a category from the dropdown at the top of the dialog that appears.</li>
	<li>Highlight the relevant products in the box below the dropdown. (You can shift-click or control-click to highlight more than one at a time.)</li>
	<li>Click the green plus button in the row where you want to add those products.</li>
	<li>To remove products, highlight them and click the red minus button above the box.</li>
	</ol>
	<em>Comparison</em><br />
	ANY = The cart has at least one product on the list. It can have products not on the list, as well.<br /><br />
	ALL = The cart has all of the products on the list. It can have products not on the list, as well.<br /><br />
	NOT = The cart has at least one product <strong>not</strong> on the list. It can have products on the list, as well.<br /><br />
	ONLY ANY = The cart has only products on the list. It <strong>cannot</strong> have products not on the list.<br /><br />
	ONLY ALL = The cart has only all of the products on the list. It <strong>cannot</strong> have products not on the list.<br /><br />
	NONE = The cart has at least one product <strong>not</strong> on the list. It <strong>cannot</strong> have products on the list.';
$_['text_select_category']			= '--- Select Category ---';
$_['text_all_products']				= 'All Products';
$_['text_DISABLED']					= 'DISABLED';
$_['text_cart_must_match']			= 'Cart must match';
$_['text_ANY']						= 'ANY';
$_['text_ALL']						= 'ALL';
$_['text_NOT']						= 'NOT';
$_['text_ONLYANY']					= 'ONLY ANY';
$_['text_ONLYALL']					= 'ONLY ALL';
$_['text_NONE']						= 'NONE';
$_['text_of_these']					= 'of these ' . $plural;

// Cost Brackets
$_['entry_cost_brackets']			= 'Cost Brackets';
$_['help_cost_brackets']			= '
	<em>Rate Type</em><br />
	The type of comparison for "From" and "To" values.<br /><br />
	<em>Notepad Icon</em><br />
	Click this to paste or enter tab-delimited data from a spreadsheet. Note that the new data will replace any current cost brackets.<br /><br />
	<em>From / To</em><br />
	The min and max bracket values (inclusive). If left blank, these will default to 0 and 999999, respectively. For Postcode-Based rates, blank fields will match all postcodes.<br /><br />
	<em>Charge</em><br />
	The ' . strtolower($type) . ' charge, as a flat rate or percentage of the total.' . ($type == 'Shipping' ? ' Use negative values to disable a rate when combined with other rates.' : ' Use positive values for fees and negative values for discounts.') . '<br /><br />
	<em>Per (unit)</em><br />
	An optional per-unit multiplier. For Total-Based rates, Per (&curren;) means per-currency-unit, such as Per ($) or Per (&euro;).<br /><br />
	<em>Final Cost</em><br />
	Select "Single" to charge only the highest bracket reached, and "Cumulative" to charge the cumulative total of all brackets reached. If needed, fill in an additional (Add) flat rate or percentage to add or subtract to the final cost, and an overall minimum (Min) and maximum (Max) final cost.';
$_['text_rate_type']				= 'Rate Type';
$_['text_based']					= '-Based';
$_['text_from']						= 'From';
$_['text_to']						= 'To';
$_['text_charge']					= 'Charge';
$_['text_per']						= 'Per';
$_['text_final_cost']				= 'Final Cost';
$_['text_single']					= 'Single';
$_['text_cumulative']				= 'Cumulative';
$_['help_cost_brackets_dialog']		= 'Paste or enter the From, To, Charge, and Per (unit) values in a tab-separated format. Any column can be left blank to not set a value for it. For example, to charge $5.00 for the first 3 items, and $1.25 for each item after that, select "Item-Based" and "Cumulative" and enter:<br /><pre style="margin-top: 5px">0	3	5.00<br />3	99999	1.25	1</pre>';

// Actions and Examples
$_['help_actions']					= '
	<em>Remove</em><br />
	Click the red minus button to remove the rate. Note that if it is the last rate remaining, it will instead be cleared of all values.<br /><br />
	<em>Copy</em><br />
	Click the gray and blue button to copy the rate to the end of the list.';
$_['help_examples']					= '
	<h2 class="selected">Example 1</h2><h2>Example 2</h2><h2>Example 3</h2>
	<div id="example1">
		Suppose you want to charge a $3.00 flat rate for Product A, a $1.00 per item rate for Product B, and 5% of the entire cart\'s taxed sub-total for everything else, then sum the charges together for a single final cost. You want the minimum final cost to be at least $3.00. Then you would enter:<br /><br />
		<strong>RATE #1</strong>
		<ul>
			<li><strong>Sort Order:</strong> 1</li>
			<li><strong>Multi Rate Calculation:</strong> Sum</li>
			<li><strong>Compare Against:</strong> Applicable items</li>
			<li><strong>Comparison:</strong> ANY</li>
			<li><strong>Products:</strong> Product A</li>
			<li><strong>Rate Type:</strong> (any)</li>
			<li><strong>Cost Brackets:</strong><br />
			- From: 0, To: 99999, Charge: 3.00</li>
		</ul>
		<strong>RATE #2</strong>
		<ul>
			<li><strong>Sort Order:</strong> 1</li>
			<li><strong>Multi Rate Calculation:</strong> Sum</li>
			<li><strong>Compare Against:</strong> Applicable items</li>
			<li><strong>Comparison:</strong> ANY</li>
			<li><strong>Products:</strong> Product B</li>
			<li><strong>Rate Type:</strong> Item-Based</li>
			<li><strong>Cost Brackets:</strong><br />
			- From: 0, To: 99999, Charge: 1.00, Per (#): 1</li>
			<li><strong>Final Cost Min:</strong> 3.00<br />
		</ul>
		<strong>RATE #3</strong>
		<ul>
			<li><strong>Sort Order:</strong> 1</li>
			<li><strong>Multi Rate Calculation:</strong> Sum</li>
			<li><strong>Value for Total:</strong> Taxed Sub-Total</li>
			<li><strong>Compare Against:</strong> Entire cart</li>
			<li><strong>Comparison:</strong> NOT</li>
			<li><strong>Products:</strong> Product A, Product B</li>
			<li><strong>Rate Type:</strong> (any)</li>
			<li><strong>Cost Brackets:</strong><br />
			- From: 0, To: 99999, Charge: 5%</li>
			<li><strong>Final Cost Min:</strong> 3.00<br />
		</ul>
	</div>
	<div id="example2" style="display: none">
		Suppose you want to charge a flat rate of $3.50 for all locations, but only when there is just Product A in the cart. If there are other items in the cart, within the U.S. you want to charge $2.00 for volumes up to 75 cubic inches, and $5.00 for volumes greater than that. For non-U.S. locations, you want to charge $10.00 for volumes up to 120 cubic inches, and $20.00 for volumes greater than that.<br /><br />
		Before taking the volume for calculations, you want it adjusted by an additional 10% when calculating costs. You also want customers to be able to choose whatever currency they want, but you want foreign currencies to be automatically converted using your currency rates. Then you would enter:<br /><br />
		<strong>RATE #1</strong>
		<ul>
			<li><strong>Currencies:</strong> Convert Unselected and US Dollar</li>
			<li><strong>Geo Zones:</strong> (all)</li>
			<li><strong>Comparison:</strong> ONLY ANY</li>
			<li><strong>Products:</strong> Product A</li>
			<li><strong>Rate Type:</strong> (any)</li>
			<li><strong>Cost Brackets:</strong><br />
			- From: 0, To: 99999, Charge: 3.50</li>
		</ul>
		<strong>RATE #2</strong>
		<ul>
			<li><strong>Compare Against:</strong> Entire cart</li>
			<li><strong>Currencies:</strong> Convert Unselected and US Dollar</li>
			<li><strong>Geo Zones:</strong> U.S.</li>
			<li><strong>Volume Add:</strong> 10%</li>
			<li><strong>Comparison:</strong> NOT</li>
			<li><strong>Products:</strong> Product A</li>
			<li><strong>Rate Type:</strong> Volume-Based</li>
			<li><strong>Cost Brackets:</strong><br />
			- From: 0, To: 75, Charge: 2.00<br />
			- From: 75, To: 99999, Charge: 5.00</li>
			<li><strong>Final Cost:</strong> Single</li>
		</ul>
		<strong>RATE #3</strong>
		<ul>
			<li><strong>Compare Against:</strong> Entire cart</li>
			<li><strong>Currencies:</strong> Convert Unselected and US Dollar</li>
			<li><strong>Geo Zones:</strong> All Other Zones</li>
			<li><strong>Volume Add:</strong> 10%</li>
			<li><strong>Comparison:</strong> NOT</li>
			<li><strong>Products:</strong> Product A</li>
			<li><strong>Rate Type:</strong> Volume-Based</li>
			<li><strong>Cost Brackets:</strong><br />
			- From: 0, To: 120, Charge: 10.00<br />
			- From: 120, To: 99999, Charge: 20.00</li>
			<li><strong>Final Cost:</strong> Single</li>
		</ul>
	</div>
	<div id="example3" style="display: none">
		Suppose for Product A and Product B you want to charge $1.00 per item for the first 10 items, then $0.50 for every item after that. For Product C and Product D, you want to charge $2.50 per pound, up to a maximum of $25.00. If the cart contains both types of items, you want to take the highest of the calculated shipping costs.<br /><br />
		You also want to limit the shipping rates so they are only available in postcodes starting with 9 or AB. (Your postcodes are 6 alphanumeric digits.) Then you would enter:<br /><br />
		<strong>RATE #1</strong>
		<ul>
			<li><strong>Sort Order:</strong> 1</li>
			<li><strong>Multi Rate Calculation:</strong> Highest</li>
			<li><strong>Compare Against:</strong> Applicable items</li>
			<li><strong>Postcodes:</strong> 9-9ZZZZZ, AB-ABZZZZ</li>
			<li><strong>Comparison:</strong> ANY</li>
			<li><strong>Products:</strong> Product A, Product B</li>
			<li><strong>Rate Type:</strong> Item-Based</li>
			<li><strong>Cost Brackets:</strong><br />
			- From: 0, To: 10, Charge: 1.00, Per (#): 1<br />
			- From: 10, To: 99999, Charge: 0.50, Per (#): 1</li>
			<li><strong>Final Cost:</strong> Cumulative</li>
		</ul>
		<strong>RATE #2</strong>
		<ul>
			<li><strong>Sort Order:</strong> 1</li>
			<li><strong>Multi Rate Calculation:</strong> Highest</li>
			<li><strong>Compare Against:</strong> Applicable items</li>
			<li><strong>Postcodes:</strong> 9-9ZZZZZ, AB-ABZZZZ</li>
			<li><strong>Comparison:</strong> ANY</li>
			<li><strong>Products:</strong> Product C, Product D</li>
			<li><strong>Rate Type:</strong> Weight-Based</li>
			<li><strong>Cost Brackets:</strong><br />
			- From: 0, To: 99999, Charge: 2.50, Per (lb): 1</li>
			<li><strong>Final Cost:</strong> Cumulative</li>
			<li><strong>Final Cost Max:</strong> 25.00</li>
		</ul>
	</div>';

// Copyright
$_['copyright']						= '<div style="text-align: center" class="help">' . $_['heading_title'] . ' ' . $version . ' &copy; <a target="_blank" href="http://www.getclearthinking.com">Clear Thinking, LLC</a></div>';

// Standard Text
$_['standard_module']				= 'Modules';
$_['standard_shipping']				= 'Shipping';
$_['standard_payment']				= 'Payments';
$_['standard_total']				= 'Order Totals';
$_['standard_feed']					= 'Product Feeds';
$_['standard_success']				= 'Success: You have modified ' . $_['heading_title'] . '!';
$_['standard_error']				= 'Warning: You do not have permission to modify ' . $_['heading_title'] . '!';
?>