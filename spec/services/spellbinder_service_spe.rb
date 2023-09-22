require 'rails_helper'
require 'webmock/rspec'

RSpec.describe SpellbinderService do
  before(:each) do
    @card_name = 'Lightning Bolt'
  end

  it 'searches for a card by name' do
    stubbed_response = File.read('spec/fixtures/search_card_response.json')
    stub_request(:get, "http://localhost:3000/api/v0/search?q=#{@card_name}")
      .to_return(status: 200, body: stubbed_response)

    result = SpellbinderService.search_card(@card_name)

    expect(result).to be_a(Hash)
    expect(result[:data]).to be_an(Array)
    expect(result[:data][0]).to have_key(:id)
    expect(result[:data][0][:id]).to be_a(String)
    expect(result[:data][0]).to have_key(:attributes)
    expect(result[:data][0][:attributes]).to be_a(Hash)
    expect(result[:data][0][:attributes]).to have_key(:name)
    expect(result[:data][0][:attributes][:name]).to be_a(String)
    expect(result[:data][0][:attributes]).to have_key(:mana_cost)
    expect(result[:data][0][:attributes][:mana_cost]).to be_a(String)
    expect(result[:data][0][:attributes]).to have_key(:type)
    expect(result[:data][0][:attributes][:type]).to be_a(String)
  end
end