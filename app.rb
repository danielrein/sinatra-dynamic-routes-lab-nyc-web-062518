require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    "#{:name.reverse}"
  end

  get '/square/:number' do
    "#{:number.to_i * :number.to_i}"
  end

  get '/say/:number/:phrase' do
    :number.to_i * :phrase}
  end

  get '/square/:number' do
    "#{:number * :number}"
  end

end
