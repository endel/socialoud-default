require 'sinatra'
require 'socialoud'
require 'erb'

get '/' do
  erb :index, :locals => {
    :social => Socialoud::Client.configure(File.expand_path('config/socialoud.yml'))
  }
end
