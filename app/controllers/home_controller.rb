class HomeController < ShopifyApp::AuthenticatedController
  def index
   
	
	ShopifyAPI::Asset.create(key: 'templates/collection.alternate.liquid', source_key : 'template/collection.liquid')
	
	
  end
end
