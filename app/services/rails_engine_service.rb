class RailsEngineService

  def self.merchants
    response = connection.get("/api/v1/merchants")
    json = JSON.parse(response.body, symbolize_names: true)
  end

  def self.merchant(id)
    response = connection.get("/api/v1/merchants/#{id}")
    json = JSON.parse(response.body, symbolize_names: true)
  end

  def self.merchant_items(merchant_id)
    response = connection.get("/api/v1/merchants/#{merchant_id}/items")
    json = JSON.parse(response.body, symbolize_names: true)
  end

  def self.connection()
    Faraday.new(url: "http://localhost:3000")
  end
end