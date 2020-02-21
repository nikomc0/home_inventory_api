require 'sinatra'
require "sinatra/namespace"
require'mongoid'
require_relative './models/item'

Mongoid.load! "mongoid.config"

class Application < Sinatra::Base
	get '/' do
	  'Welcome to BookList!'
	end
end