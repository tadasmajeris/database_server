require 'sinatra/base'

class DatabaseServer < Sinatra::Base
  set :port, 4000
  enable :sessions

  get '/' do
    'Home'
  end

  post '/set' do
    session.merge!(params)
  end

  get '/get' do
    session[params[:key]]
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
