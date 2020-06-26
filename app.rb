require 'sinatra/base'
require './lib/person'

class Birthday < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
    # 'Testing infrastructure working!'
  end
  post '/names' do
    $person = Person.new(params[:name],params[:day],params[:month])
    redirect '/birthday'
  end
  get '/birthday' do
    @name = $person.name
    @day = $person.day
    @month = $person.month
    erb :birthday
  end
end
# rackup -p 4567  NOT SHOTGUN!!!
