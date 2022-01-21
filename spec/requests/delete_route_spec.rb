require 'rails_helper'

describe "delete a business route", :type => :request do

  let!(:businesses) { FactoryBot.create_list(:business, 20) }

  before do 
    @business_id = Business.first.id
    delete "/businesses/#{@business_id}"
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(200)
  end

  it 'returns a deleted success status message' do
    expect(JSON.parse(response.body)['message']).to eq("This Business has been deleted!")
  end
end