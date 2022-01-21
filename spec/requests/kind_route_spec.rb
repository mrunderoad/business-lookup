require 'rails_helper'

describe "search for aa business by name route", :type => :request do

  let!(:businesses) { FactoryBot.create_list(:business, 20) }

  before { get "/businesses?kind=#{Business.first.kind}" }

  it 'returns one business' do
    expect(JSON.parse(response.body).size).to eq(1)
  end

  it 'returns the business with the kind: Chinese' do
    expect(JSON.parse(response.body).first['kind']).to eq(Business.first.kind)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end