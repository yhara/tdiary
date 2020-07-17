$:.unshift( File.join(File::expand_path(File::dirname( __FILE__ )), 'lib' ) )
require 'tdiary/application'

use ::Rack::Reloader unless ENV['RACK_ENV'] == 'production'
my_base_dir = '/'
run TDiary::Application.new(my_base_dir)
