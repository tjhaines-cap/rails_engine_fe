class RailsEngineService

  def self.merchants
    response = connection.get("/api/v1/merchants")
    json = JSON.parse(response.body, symbolize_names: true)
  end

  def self.connection()
    Faraday.new(url: "http://localhost:3000")
  end
end