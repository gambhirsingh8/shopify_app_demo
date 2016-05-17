class HomeController < ShopifyApp::AuthenticatedController
  def index
 
  asset = ShopifyAPI::Asset.find('snippets/snippet-select.liquid') 
 
  self.theme_snippets = asset.value 
  snippet = DripSnippet.new(self.drip_account)
  if asset.value.match(/#{snippet.start_wrapper}/i)
    asset.value.sub!(/#{snippet.start_wrapper}.*#{snippet.end_wrapper}/im, snippet.snippet)
  else
    asset.value.sub!(/<\/body>/, "#{snippet.snippet}</body>") 
  end
  return asset.save	
  end
end
