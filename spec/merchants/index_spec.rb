require 'rails_helper'

RSpec.describe 'Merchants index page' do

  it 'lists merchants by name, each merchant name is a link to their show page' do
    merchants = JSON.parse(File.read('./spec/fixtures/merchant_data.json'), symbolize_names: true)
    merchants[:data].map do |merchant_data|
      # binding.pry
      Merchant.new(merchant_data)
    end
    
    visit '/merchants'

    expect(page).to have_content(Merchant.first.name)
  end
end