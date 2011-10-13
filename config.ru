require 'sinatra'
require "rack/cache"

set :public_folder, File.dirname(__FILE__) + '/public'
use Rack::Cache

require './app'
run Sinatra::Application
