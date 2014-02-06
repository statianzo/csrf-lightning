require 'bundler/setup'
require 'sinatra'

get '/' do
  erb :index
end

post '/hello' do
  @posted = params[:payload]
  erb :index
end

run Sinatra::Application
