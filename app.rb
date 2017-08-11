require "sinatra"
require_relative "changer.rb"

get "/" do
  erb :index
end

post '/index' do 
  number = params[:num]
  change = params[:change]
  change = coinchanger(number)
  # change = hashconverter(change)
   redirect '/changepage?num=' + number + '&change=' + change
end

get '/changepage' do
  number = params[:num]
  change = params[:change]
  erb :changepage, :locals => {:number => number, :change => change}
end