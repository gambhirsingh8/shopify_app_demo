class HomeController < ShopifyApp::AuthenticatedController
  def index
   
	
	ShopifyAPI::Asset.create(key: 'templates/collection.alternate.liquid', src: 'myapp.liquid')
	
	
  end
end
