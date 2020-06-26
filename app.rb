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
    @birthday_check = $person.birthday_gone
    erb :birthday
  end
end
# rackup -p 4567  NOT SHOTGUN!!!
