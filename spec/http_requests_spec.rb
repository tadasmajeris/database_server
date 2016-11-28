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
    post 'http://localhost:4000/set?somekey=somevalue'
    expect(last_response).to be_ok
    get 'http://localhost:4000/get?key=somekey'
    expect(last_response.body).to eq 'somevalue'
  end

  it "can send and get various keys and values" do
    post 'http://localhost:4000/set?anotherkey=anothervalue'
    expect(last_response).to be_ok
    get 'http://localhost:4000/get?key=anotherkey'
    expect(last_response.body).to eq 'anothervalue'
  end

  it "can send and get various keys and values (variation 2)" do
    post 'http://localhost:4000/set?new=thing'
    expect(last_response).to be_ok
    get 'http://localhost:4000/get?key=new'
    expect(last_response.body).to eq 'thing'
  end
end
