require 'rails_helper'

describe "search for aa business by name route", :type => :request do

  let!(:businesses) { FactoryBot.create_list(:business, 20) }

  before { get "/businesses?name=#{Business.first.name}" }

  it 'returns one business' do
    expect(JSON.parse(response.body).size).to eq(1)
  end

  it 'returns the business with the name: Food Shack' do
    expect(JSON.parse(response.body).first['name']).to eq(Business.first.name)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end