require 'sinatra/base'
require_relative './data_mapper_setup.rb'

class Chitter < Sinatra::Base
  get '/' do
  end

  get '/sign_up' do
    erb :'sign_up/sign_up'
  end

  post '/sign_up' do
    user = User.new(email: params[:email], username: params[:username], name: params[:name], password: params[:password])
    user.save
    redirect('/confirmation')
  end

  get '/confirmation' do
    @user = User.last
    erb :'sign_up/confirmation'
  end
end
