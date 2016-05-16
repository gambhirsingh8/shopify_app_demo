class HomeController < ShopifyApp::AuthenticatedController
  def index
   
	
	ShopifyAPI::Asset.create(key: 'templates/collection.alternate.liquid', src: 'collection.alternate.liquid')
	ShopifyAPI::Asset.new(key: 'snippets/snippet-select.liquid', src: 'snippet-select.liquid')
	
	
  asset = ShopifyAPI::Asset.find('templates/collection1') # 1.
  # Grab a cache of the pre-installed layout
  self.theme_layout = asset.value # 2.
  snippet = DripSnippet.new(self.drip_account)
  return asset.save
	
  end
end
