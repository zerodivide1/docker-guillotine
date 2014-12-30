#\ -p 8080 -o 0.0.0.0 -E deployment -w
require "rubygems"
require File.expand_path("../app.rb", __FILE__)
run MyApp::App
