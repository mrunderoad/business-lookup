require 'rails_helper'

describe "get random business route", :type => :request do

  let!(:businesses) { FactoryBot.create_list(:business, 20) }

  before { get '/businesses/random' }

  it 'returns one random business' do
    expect(JSON.parse(response.body).size).to eq(4)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end