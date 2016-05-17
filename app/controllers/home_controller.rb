class HomeController < ShopifyApp::AuthenticatedController
  def index
   
	ShopifyAPI::Asset.create(key: 'snippets/snippet-select.liquid', src: 'snippet-select.liquid', attachment: 'snippet-select.liquid')
	
  end
end
