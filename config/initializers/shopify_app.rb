ShopifyApp.configure do |config|
  config.api_key = "d87518eab967135c69b27ff4f47db29c"
  config.secret = "d5b3419f0907b8c7d2c72ee5392642b3"
  redirect_uri = "https://salty-cove-48458.herokuapp.com/auth/shopify/callback"
  config.scope = "read_orders, read_products, read_themes, write_themes, execute_themes"
  config.embedded_app = true
end
