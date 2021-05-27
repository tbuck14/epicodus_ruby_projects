require('sinatra')
require('sinatra/reloader')
require('./lib/riddle.rb')
require('pry')
also_reload('lib/riddle.rb')


riddle = Riddle.new("today before yesterday","I’m the rare case when today comes before yesterday. What am I?","a dictionary",nil)
riddle.save()
r2 = Riddle.new("around the world","What goes all the way around the world but stays in a corner?","a stamp",nil)
r2.save()
r3 = Riddle.new("bigger the more taken away","What gets bigger the more you take away?","a hole",nil)
r3.save()
r4 = Riddle.new("four fingers and a thumb","What has four fingers and a thumb, but isn’t alive?","a glove",nil)
r4.save()
r5 = Riddle.new("you have me you want to share","If you have me, you will want to share me. If you share me, you will no longer have me. What am I?","a secret",nil)
r5.save()
riddle_number = 0 
get('/')do
    @riddles = Riddle.all
    @riddle_number = riddle_number
    erb(:home)
end
post('/')do
    @riddles = Riddle.all
    if @riddles[riddle_number].guess(params["guess"])
        riddle_number += 1
        @riddle_number = riddle_number
        redirect('success') if @riddle_number == 5
        erb(:home)
    else
        riddle_number = 0 
        redirect('/failure')
    end
end
get('/success') do 
    riddle_number = 0 
    erb(:success)
end
get('/failure') do 
    erb(:failure)
end
get('/riddles')do
    @riddles = Riddle.all
    erb(:riddles)
end
get('/riddles/:id') do
    @riddle = Riddle.find(params[:id].to_i())
    erb(:riddle)
end