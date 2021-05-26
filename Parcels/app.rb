require('sinatra')
require('sinatra/reloader')
require('./lib/parcel')
require('pry')
also_reload('lib/**/*.rb')


get('/') do
    erb(:shipping)
end
get('/invalid') do
    @error_message = "error: Invalid Shipping Method!"
    erb(:shipping)
end
post('/cost') do 
    input = params["shipping_method"].downcase
    if input == 'standard' || input == 'priority' || input == 'overnight'
        parcel = Parcel.new(params["length"].to_i,params["width"].to_i,params["height"].to_i,params["weight"].to_i,nil)
        @shipping_cost = parcel.cost_to_ship(params["shipping_method"])
        @shipping_method = params["shipping_method"]
        erb(:cost)
    else   
        redirect('/invalid')
    end
end