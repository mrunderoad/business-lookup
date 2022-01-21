require 'rails_helper'

describe "post a business route", :type => :request do 

  let!(:businesses) { FactoryBot.create_list(:business, 20) }

  before do 
    post '/businesses', params: { :name => 'testaurant', :kind => 'food_palace', :content => 'food_place' }
  end

  it 'returns the name of the business' do
    expect(JSON.parse(response.body)['name']).to eq('testaurant')
  end

  it 'returns the kind of business' do
    expect(JSON.parse(response.body)['kind']).to eq('food_palace')
  end

  it 'returns the business content' do
    expect(JSON.parse(response.body)['content']).to eq('food_place')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end