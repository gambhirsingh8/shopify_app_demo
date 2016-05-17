class HomeController < ShopifyApp::AuthenticatedController
  def index
   
	ShopifyAPI::Asset.create(key: 'snippets/snippet-select.liquid', src: 'snippet-select.liquid', value: '{% comment %} Include This Snippet to Your Collection Template{% endcomment %}
<div class="selectContainer" >
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
	
	<style>
	.selectContainer{width:150px;}
	
	</style>
	
	<script>

  function jumpto(x)
  {
    if(productPage.pp.value!="null")
    {
  	location.href=x;
    }  
  }
</script>')

ShopifyAPI::Asset.create(key: 'templates/collection.10.liquid', src: 'collection.10.liquid', source_key: 'templates/collection.liquid')
ShopifyAPI::Asset.create(key: 'templates/collection.20.liquid', src: 'collection.20.liquid', source_key: 'templates/collection.liquid')
ShopifyAPI::Asset.create(key: 'templates/collection.30.liquid', src: 'collection.30.liquid', source_key: 'templates/collection.liquid')
ShopifyAPI::Asset.create(key: 'templates/collection.40.liquid', src: 'collection.40.liquid', source_key: 'templates/collection.liquid')
ShopifyAPI::Asset.create(key: 'templates/collection.50.liquid', src: 'collection.50.liquid', source_key: 'templates/collection.liquid')

asset = ShopifyAPI::Asset.find('templates/collection.10.liquid')
theme_templates = asset.value
if asset.values.match('{% paginate collection.products by 20 %}')
asset.value.sub!('{% paginate collection.products by 10 %}')
else
asset.value.sub!('{% paginate collection.products by 10 %}')
end
return asset.save
  end
end
