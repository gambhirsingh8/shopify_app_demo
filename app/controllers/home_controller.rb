class HomeController < ShopifyApp::AuthenticatedController
  def index
   
	
	ShopifyAPI::Asset.create(key: 'templates/collection.alternate.liquid', src: 'collection.alternate.liquid')
	ShopifyAPI::Asset.new(key: 'snippets/snippet-select.liquid', src: 'snippet-select.liquid')
	
	
  asset = ShopifyAPI::Asset.new('templates/collection1') # 1.
  # Grab a cache of the pre-installed layout
  asset.save
	
  end
end
