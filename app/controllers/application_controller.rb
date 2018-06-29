require './config/environment'
require './app/models/model'
class ApplicationController < Sinatra::Base

  configure do
  	set :views, "app/views"
  	set :public_dir, "public"
  end

  get '/' do    #this is your default/homepage
    return erb :index  
#   get "/newpage"do
#     erb :newpage
  end
  
  # get '/get_name'do
  #   first_dog = Dog.new("rudolph","mastiff",2)
  #   first_dog.get_name + first_dog.get_breed + first_dog.get_age
     post '/' do  #we click the button now what?
       @the_fortune=get_fortune #method get_fortune is connected to the instance variable @the_fortune
       @the_user=params[:user] #creating a new instance variable the_user
       #hash that stores user input ex: => value
       return erb :results
 end
end