# app.rb
require 'guillotine'
module MyApp
  class App < Guillotine::App
    adapter = Guillotine::Adapters::MemoryAdapter.new
    set :service => Guillotine::Service.new(adapter)

    get '/' do
      redirect 'https://google.com'
    end
  end
end
