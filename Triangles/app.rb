require('sinatra')
require('sinatra/reloader')
require('./lib/triangle')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
    erb(:input_triangle)
end
post('/result') do
    dims = params["name"].split(',')
    s_1 = dims[0].to_i
    s_2 = dims[1].to_i
    s_3 = dims[2].to_i
    triangle = Triangle.new(s_1,s_2,s_3)
    @type = triangle.type?()
    erb(:result)
end