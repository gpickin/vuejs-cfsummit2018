<!-- jQuery -->
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>

<!-- VueJS -->
<script src="https://unpkg.com/vue"></script>

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
    
    <cfset item_list 		= deserializeJSON( fileRead( 'query.json' ) )>
    <h1>List Loader for Pesticides - VueJS - 0 - Filtered Items Method</h1>
    
    
    
    <form method="post">
        <input type="hidden" name="evaluation_id" value="#attributes.evaluation_id#">
        <input type="hidden" name="training_id" value="#attributes.training_id#">
        <input type="hidden" name="session_id" value="#attributes.session_id#">
        <input type="hidden" name="totalrowcount" value="#totalrowcount#">
        <input type="hidden" name="rowperpage" value="#rowperpage#">
    
    <div id="listLoadVue">
    <h3>List Items</h3>
    
    <div>
        List Item Search:
        <input type="text" name="searchtext" id="searchtext" value="" v-model="searchtext">
        Or
        <input type="checkbox" name="searchCheck" id="searchCheck" value="1" v-model="showSelectedOnly"> Checked
        <!--- <input type="button" name="btnSearch" value="Search" class="btn"> --->
    </div>
    
    
    <table cellspacing="0" cellpadding="3">
        <tr style="font-weight:bold;">
            <td width="20">&nbsp;</td>
        <td>Name</td>
        </tr>
    
        <tr v-for="item in filteredItems()">
            <td>
                    <input type="checkbox" :id="'int_list_item_id_' + item.int_list_item_id"
                        name="int_list_item_id"
                        :value="item.int_list_item_id"
                        :checked="item.checked"
                        class="checkbox_filter">
            </td>
            <td>
                    <label :for="'int_list_item_id_' + item.int_list_item_id">{{ item.txt_list_item_name }}</label>
                </td>
            </tr>
        </tr>
    </table>
    </div>
    <script>
    
        new Vue({
            el: '##listLoadVue',
            data: {
                searchtext: '',
                showSelectedOnly: false,
                items: [
                    <cfloop array="#item_list#" item="item">
                    {
                        "int_list_item_id": #item.int_list_item_id#,
                        "txt_list_item_name": `#item.txt_list_item_name#`,
                        "checked": false
                    },
                    </cfloop>
                ]
            },
            computed: {
    
            },
            methods: {
                filteredItems () {
                    console.time( 'filterTime' );
                    var $this = this;
                    var newItems = JSON.parse( JSON.stringify( this.items ) );
    
                    var theResult = newItems.filter( item => {
                        let filter = $this.searchtext.toLowerCase();
                        return (
                            ( !$this.showSelectedOnly || item.checked ) &&
                            ( !$this.searchtext.length || item.txt_list_item_name.toLowerCase().indexOf( filter ) > -1 )
                        )
                      })
    
                    console.timeEnd( 'filterTime' );
                    return theResult;
                }
            },
            beforeUpdate: function() {
                console.time( 'paintTime' );
            },
            updated: function() {
                console.timeEnd( 'paintTime' );
            }
        });
    
    </script>
    
    <input type="submit" name="buildform" value="Build Form" class="btn">
    
    </form>
    
    </cfoutput>