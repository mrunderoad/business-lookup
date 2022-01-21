require 'rails_helper'

describe "paginate businesses route", :type => :request do

  let!(:businesses) { FactoryBot.create_list(:business, 20) }

  before { get '/businesses?page=1' }

  it 'returns 4 messages per page' do
    expect(JSON.parse(response.body).size).to eq(4)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end