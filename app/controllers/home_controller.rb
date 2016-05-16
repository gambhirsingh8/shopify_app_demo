class HomeController < ShopifyApp::AuthenticatedController
  def index
       $asset = $shopify('PUT /admin/themes/assets.json', array(), array
    (
        'asset' => array
        (
            "key" => "snippets/file.liquid",
            "src" => "file.liquid"
        )
    ));
  end
end
