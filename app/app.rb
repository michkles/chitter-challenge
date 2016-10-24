ENV["RACK_ENV"] ||= "development"
require 'sinatra/base'
require_relative 'models/peep'
require_relative 'models/user'

class Chitter < Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret'

  helpers do
   def current_user
     @current_user ||= User.get(session[:user_id])
   end
  end


  get '/peeps' do
    @peeps = Peep.all
    erb :'peeps/index'
  end

  post '/peeps' do
    Peep.create(message: params[:message])
    redirect '/peeps'
  end

  get '/peeps/new' do
    erb :'peeps/new'
  end

  get '/users/new' do
    erb :'users/new'
  end

  post '/users' do
    User.create(email: params[:email],
              name: params[:name],
              username: params[:username],
              password: params[:password],
              password_confirmation: params[:password_confirmation])
    redirect to('/peeps')
  end

  run! if app_file == $0
end
