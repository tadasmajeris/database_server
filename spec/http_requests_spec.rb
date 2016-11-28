require_relative 'spec_helper'

describe 'HTTP requests' do
  include Rack::Test::Methods

  def app
    DatabaseServer.new
  end

  it "can send request to home page and get the response" do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to eq 'Home'
  end

  it "can send requests with params and get them saved to memory" do
    post '/set?somekey=somevalue'
    expect(last_response).to be_ok
    get '/get?key=somekey'
    expect(last_response.body).to eq 'somevalue'
  end
end
