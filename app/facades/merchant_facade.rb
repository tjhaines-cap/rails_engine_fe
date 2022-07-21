class MerchantFacade

  def self.merchants
    json = RailsEngineService.merchants

    merchants = json[:data]

    merchants.map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end

  def self.merchant(id)
    json = RailsEngineService.merchant(id)
    merchant = json[:data]
    Merchant.new(merchant)
  end
end