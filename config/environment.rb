require 'rubygems'
require 'bundler/setup'

require 'active_support/all'

# Load Sinatra Framework (with AR)
require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/contrib/all' # Requires cookies, among other things

<<<<<<< HEAD
require 'omniauth-facebook' # Facebook Authentication 

=======
require 'omniauth'
require 'omniauth-github'
>>>>>>> a0f248ef1fd3e5591de20f0b3e2f5c2d9fcba96b

APP_ROOT = Pathname.new(File.expand_path('../../', __FILE__))
APP_NAME = APP_ROOT.basename.to_s

# Global Sinatra configuration
configure do
  set :root, APP_ROOT.to_path
  set :server, :puma

  enable :sessions
  set :session_secret, ENV['SESSION_KEY'] || 'lighthouselabssecret'
  
  use OmniAuth::Builder do
    provider :github, '', '', scope: "user:email"
  end

  set :views, File.join(Sinatra::Application.root, "app", "views")
end

# Development and Test Sinatra Configuration
configure :development, :test do
  require 'pry'
end

# Production Sinatra Configuration
configure :production do
  # NOOP
end

# Set up the database and models
require APP_ROOT.join('config', 'database')

# Load the routes / actions
require APP_ROOT.join('app', 'actions')
