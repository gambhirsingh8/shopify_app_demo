class HomeController < ShopifyApp::AuthenticatedController
  def index
   
	ShopifyAPI::Asset.create(key: 'snippets/snippet-select.liquid', src: 'snippet-select.liquid', attachment: 'https://github.com/gambhirsingh8/shopify_app_demo/blob/master/snippet-select.liquid')
	
  end
end
