require 'bundler'
Bundler.require
require_relative 'models/model.rb'
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
post '/doge' do 
  user_per=params[:personality].to_i
  user_mus=params[:music].to_i
  user_act=params[:act].to_i
  user_trig=params[:trig].to_i
  user_ann=params[:ann].to_i
  user_kind=params[:kind].to_i
  value=user_per+user_mus+user_act+user_trig+user_ann+user_kind
@results=doge(value)  
erb :results   
end
end 