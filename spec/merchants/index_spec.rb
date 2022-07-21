require 'rails_helper'

RSpec.describe 'Merchants index page' do

  it 'lists merchants by name, each merchant name is a link to their show page' do
    
    visit '/merchants'

    expect(page)

  end
end