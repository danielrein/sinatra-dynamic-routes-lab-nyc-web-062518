require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    "#{:name.reverse}"
  end

  get '/square/:number' do
    "#{:number * :number}"
  end

end
