class HomeController < ShopifyApp::AuthenticatedController
  def index
   
	
	ShopifyAPI::Asset.create(key: 'templates/collection.alternate.liquid', src: 'collection.alternate.liquid')
	ShopifyAPI::Asset.create(key: 'templates/collection.alternate.liquid', src: 'snippet-select.liquid')
	
	
  end
end
