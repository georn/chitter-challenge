require 'sinatra/base'

class Chitter < Sinatra::Base
  get '/sign_up' do
    erb :sign_up
  end
end
