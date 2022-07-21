require 'rails_helper'

RSpec.describe RailsEngineService do

  describe '#merchants' do
    it 'returns merchants' do
      merchants = RailsEngineService.merchants

      expect(merchants[:data]).to be_an(Array)

      merchants[:data].each do |merchant|
        expect(merchant).to have_key(:id)
        expect(merchant[:type]).to eq("merchant")
        expect(merchant[:attributes][:name]).to be_a(String)
      end
    end
  end
end