class HomeController < ShopifyApp::AuthenticatedController
  def index
   
	
	ShopifyAPI::Asset.create(key: 'templates/collection.alternate.liquid', src: 'collection.alternate.liquid')
	ShopifyAPI::Asset.new(key: 'snippets/snippet-select.liquid', src: 'snippet-select.liquid')
	
	
  end
end
