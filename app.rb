require 'sinatra'
require "rack/cache"
require 'socialoud'
require 'erb'

use Rack::Cache

get '/' do
  cache_control :public, :max_age => 36000
  erb :index, :locals => {
    :social => Socialoud::Client.configure(File.expand_path('config/socialoud.yml'))
  }
end
