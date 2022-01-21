require 'rails_helper'

describe "delete all businesses route", :type => :request do

  let!(:businesses) { FactoryBot.create_list(:business, 20) }

  before do 
    @business = Business.all
    delete "/businesses/clear"
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(200)
  end

  it 'returns a deleted success status message' do
    expect(JSON.parse(response.body)['message']).to eq("All Businesses have been deleted!")
  end 
end