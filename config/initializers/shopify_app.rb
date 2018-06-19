ShopifyApp.configure do |config|
  config.application_name = "JuiceSociety Shipping"
  config.api_key = ENV["SHOPIFY_API_KEY"]
  config.secret = ENV["SHOPIFY_SECRET"]
  config.scope = "read_products, read_shipping, write_shipping, read_checkouts, write_checkouts, read_orders, read_customers, write_customers"
  config.embedded_app = true
  config.after_authenticate_job = false
  config.session_repository = ShopifyApp::InMemorySessionStore
end
