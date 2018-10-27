<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<cfoutput>
    <cfparam name="attributes.evaluation_id" default="-1">
    <cfparam name="attributes.training_id" default="-1">
    <cfparam name="attributes.session_id" default="-1">
    <cfparam name="totalrowcount" default="100">
    <cfparam name="rowperpage" default="20">
    
    <h1>List Loader for Pesticides - jQuery Version</h1>
    <cfset item_list 		= deserializeJSON( fileRead( 'query.json' ) )>
    
    <form method="post">
        <input type="hidden" name="evaluation_id" value="#attributes.evaluation_id#">
        <input type="hidden" name="training_id" value="#attributes.training_id#">
        <input type="hidden" name="session_id" value="#attributes.session_id#">
        <input type="hidden" name="totalrowcount" value="#totalrowcount#">
        <input type="hidden" name="rowperpage" value="#rowperpage#">
    
    <h3>List Items</h3>
    
    <div>
        List Item Search:
        <input type="text" name="searchtext" id="searchtext" value="" onkeyup="ajaxFilter();">
        Or
        <input type="checkbox" name="searchCheck" id="searchCheck" value="1" onclick="ajaxFilter()"> Checked
    </div>
    
    <table cellspacing="0" cellpadding="3">
        <tr style="font-weight:bold;">
            <td width="20">&nbsp;</td>
        <td>Name</td>
        </tr>
    <cfloop array="#item_list#" item="item">
        <tr>
            <td>
                <input type="checkbox" id="int_list_item_id_#item.int_list_item_id#" name="int_list_item_id" value="#item.int_list_item_id#" class="checkbox_filter">
            </td>
            <td class="td_filter">
                <label for="int_list_item_id_#item.int_list_item_id#">#item.txt_list_item_name#</label>
            </td>
    
        </tr>
    </cfloop>
    </table>
    
    
    <script>
    
        var timeoutId;
    
        function ajaxFilter() {
            console.time( 'filterTime' );
            //clearTimeout(timeoutId);
            //timeoutId = setTimeout(function() {
    
            if ($("##searchtext").val() !== '' || $("##searchCheck").prop('checked') ) {
                $(".td_filter").parent().hide();
            }
            else {
                $(".td_filter").parent().show();
            }
    
            if ($("##searchtext").val() !== ''){
                $(".td_filter").filter(function() {
                    return $(this).text().toUpperCase().indexOf($("##searchtext").val().toUpperCase()) !== -1;
                }).parent().show();
            }
            if ($("##searchCheck").prop('checked')) {
                $(".checkbox_filter").filter(function() {
                return $(this).prop('checked');
                }).parent().parent().show();
            }
    
            console.timeEnd( 'filterTime' );
            //}, 1000 );
        }
        
    </script>
        
    <input type="submit" name="buildform" value="Build Form" class="btn">
    
    </form>
    
    </cfoutput>