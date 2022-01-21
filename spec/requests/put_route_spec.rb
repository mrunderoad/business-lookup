require 'rails_helper'

describe "update a business route", :type => :request do

  let!(:businesses) { FactoryBot.create_list(:business, 20) }

  before do 
    put "/businesses/#{Business.first.id}", params: { :name => 'updated_testaurant', :kind => 'updated_food_palace', :content => 'updated_food_place' }
  end

  it 'should have new name, kind and content' do
    expect(Business.first.name).to eq("updated_testaurant")
    expect(Business.first.kind).to eq("updated_food_palace")
    expect(Business.first.content).to eq("updated_food_place")
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(200)
  end

  it 'returns an updated status message' do 
    expect(JSON.parse(response.body)['message']).to eq("This Business has been updated!")
  end
end