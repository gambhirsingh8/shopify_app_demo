class HomeController < ShopifyApp::AuthenticatedController
  def index
   
	ShopifyAPI::Asset.create(key: 'snippets/snippet-select.liquid', src: 'snippet-select.liquid', value: '{% comment %} Include This Snippet to Your Collection Template{% endcomment %}
<div class="filter col-3 medium-down--col-4 small--col-12" >
      <p>Product Per Page:</p>
       <form name="productPage">
      <select name= "pp" class="ppp" id="product1" onChange="jumpto(productPage.pp.options[productPage.pp.options.selectedIndex].value)">
        <option>Select Products</option>
        <option value="{{ collection.handle }}?view=10"> 10</option>
        <option value="{{ collection.handle }}?view=20"> 20 </option>
        <option value="{{ collection.handle }}?view=30"> 30 </option>
        <option value="{{ collection.handle }}?view=40"> 40 </option>
        <option value="{{ collection.handle }}?view=50"> 50 </option>
        
      </select>
       </form>
       
</div>
	
	
	<script>

  function jumpto(x)
  {
    if(productPage.pp.value!="null")
    {
  	location.href=x;
    }  
  }
</script>')

ShopifyAPI::Asset.put(key: 'templates/alternate.collection.liquid', src: 'alternate.collection.liquid', source_key: 'templates/collection.liquid')

	
  end
end
