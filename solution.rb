require 'sinatra'

name = ""

get '/' do
  erb :index
end

get '/frase' do
  @name = name
  erb :frase
end


post '/frase' do
  name = params[:name]
  redirect '/frase'
end