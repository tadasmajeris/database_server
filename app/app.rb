require 'sinatra/base'

class DatabaseServer < Sinatra::Base
  set :port, 4000

  get '/' do
    'Home'
  end

  post '/set' do
    p params
  end

  get '/get' do
    'somevalue'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
