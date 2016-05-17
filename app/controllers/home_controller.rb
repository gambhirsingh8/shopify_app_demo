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

ShopifyAPI::Asset.create(key: 'templates/collection.10.liquid', src: 'collection.10.liquid', source_key: 'templates/collection.liquid')
ShopifyAPI::Asset.create(key: 'templates/collection.20.liquid', src: 'collection.20.liquid', source_key: 'templates/collection.liquid')
ShopifyAPI::Asset.create(key: 'templates/collection.30.liquid', src: 'collection.30.liquid', source_key: 'templates/collection.liquid')
ShopifyAPI::Asset.create(key: 'templates/collection.40.liquid', src: 'collection.40.liquid', source_key: 'templates/collection.liquid')
ShopifyAPI::Asset.create(key: 'templates/collection.50.liquid', src: 'collection.50.liquid', source_key: 'templates/collection.liquid')

ShopifyAPI::Asset.create(key: 'templates/collection.10.liquid', src: 'collection.10.liquid', value: '{% paginate collection.products by 10 %}

{% include 'breadcrumb' %}

{% assign has_sidebar = false %}
{% if collection.all_tags.size > 0 %}
  {% assign has_sidebar = true %}
{% endif %}

<div class="grid grid-border">

  
  
  {% if has_sidebar %}
  <aside class="sidebar grid-item large--one-fifth collection-filters" id="collectionFilters">
    {% include 'collection-sidebar' %}
  </aside>
  {% endif %}

  <div class="grid-item{% if has_sidebar %} large--four-fifths grid-border--left{% endif %}">

    {% comment %}
      Different markup if description is set
    {% endcomment %}
    {% if collection.description != blank %}
      <header class="section-header">
        <h1 class="section-header--title">{{ collection.title }}</h1>
        <div class="rte rte--header">
          {{ collection.description }}
        </div>
      </header>
      <hr{% if has_sidebar %} class="hr--offset-left"{% endif %}>
      <div class="section-header">
        <div class="section-header--right">
          {% include 'collection-sorting' %}
          {% include 'collection-views' %}
          {% include 'toggle-filters' %}
          {% include 'snippet-select' %}
        </div>
      </div>
    {% else %}
    <header class="section-header">
      <h1 class="section-header--title section-header--left">{{ collection.title }}</h1>
      <div class="section-header--right">
        {% include 'collection-sorting' %}
        {% include 'collection-views' %}
        {% include 'toggle-filters' %}
        {% include 'snippet-select' %}
        
      </div>
    </header>
    {% endif %}

    <div class="grid-uniform">

      {% for product in collection.products %}
        
        {% if has_sidebar %}
          {% assign grid_item_width = 'large--one-quarter medium--one-third small--one-half' %}
        {% else %}
          {% assign grid_item_width = 'large--one-fifth medium--one-third small--one-half' %}
        {% endif %}
        {% include 'product-grid-item' %}

      {% else %}

        <div class="grid-item">
          <p>{{ 'collections.general.no_matches' | t }}</p>
        </div>

      {% endfor %}

    </div>

  </div>

  {% if paginate.pages > 1 %}
  <div class="grid-item pagination-border-top">
    <div class="grid">
      <div class="grid-item{% if has_sidebar %} large--four-fifths push--large--one-fifth{% endif %}">
          <div class="text-center">
            {% include 'pagination-custom' %}
          </div>
      </div>
    </div>
  </div>
  {% endif %}

</div>

{% endpaginate %}
')


  end
end
