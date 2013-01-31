require 'sinatra'
require 'sinatra/reloader'
require 'tilt'

# Routes
get "/:entry" do |entry|
  template = Tilt.new('views/layout.erb')
  template.render do
    Tilt.new('views/testblog.erb').render
  end 
end
