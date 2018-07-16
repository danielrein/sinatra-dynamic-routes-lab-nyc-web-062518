require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    "#{:name.reverse}"
  end

  get '/square/:number' do
    "#{:number * :number}"
  end

  get '/say/:number/:phrase' do
    "#{:number * :phrase}"
  end

  get '/square/:number' do
    "#{:number * :number}"
  end

end
