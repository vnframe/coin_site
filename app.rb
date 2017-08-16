require "sinatra"
require_relative "changer.rb"
require_relative "pair_names.rb"

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
get "/pairing" do 
  erb :pairing
end
post "/pairing" do 
  name = params.values
  team = params[:team]
team = pairs(name).to_s
puts "name is #{name}"
puts "team is #{team}"
erb :teamresults, :locals => {:team => team}
end