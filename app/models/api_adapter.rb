class ApiAdapter

  def self.quantity(item_id:)
    url = "https://katala1975.myshopify.com/admin/inventory_levels/adjust.json"
    RestClient::Request.execute(method: :post,
      url: url,
      user: ENV["user_shop"],
      password: ENV["password_shop"],
      payload: {"location_id": '6670811197', "inventory_item_id": item_id, "available_adjustment": '-1'},
      headers: {"Content-Type" => "application/json"})
  end

  def self.merchandise
    url = "https://katala1975.myshopify.com/admin/products.json"
    RestClient::Request.execute method: :get, url: url, user: ENV["user_shop"], password: ENV["password_shop"]
  end

  def self.inventory(item_id:)
    url = "https://katala1975.myshopify.com/admin/inventory_levels.json?inventory_item_ids=#{item_id}"
    RestClient::Request.execute method: :get, url: url, user: ENV["user_shop"], password: ENV["password_shop"]
  end


end
