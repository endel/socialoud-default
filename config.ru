require 'sinatra'

set :public_folder, File.dirname(__FILE__) + '/public'

require './app'
run Sinatra::Application
