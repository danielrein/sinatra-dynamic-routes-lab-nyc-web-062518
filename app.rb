require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/reversename/:name' do
    "#{:name.reverse}"
  end

  get '/square/:number' do
    "#{:number.to_i * :number.to_i}"
  end

  get '/say/:number/:phrase' do
    n = :number.to_i
    n * "#{:phrase}"
  end

  get '/square/:number' do
    "#{:number * :number}"
  end

end
