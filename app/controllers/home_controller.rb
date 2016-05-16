class HomeController < ShopifyApp::AuthenticatedController
  def index
    @products = ShopifyAPI::Product.find(:all, :params => {:limit => 10})
	
	ShopifyAPI::Asset.create(key: 'templates/collection.alternate.liquid', src: 'collection.alternate.liquid')
	
	
  end
end
