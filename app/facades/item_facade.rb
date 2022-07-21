class ItemFacade

  def self.merchant_items(merchant_id)
    json = RailsEngineService.merchant_items(merchant_id)
    items = json[:data]
    # binding.pry
    items.map do |item_data|
      Item.new(item_data)
    end
  end

end