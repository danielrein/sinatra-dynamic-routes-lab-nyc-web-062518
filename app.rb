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
    string = ''
    n = :number.to_i
    n.times { string += :phrase }
    string
  end

  get '/square/:number' do
    "#{:number * :number}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{word1} #{word2} #{word3} #{word4} #{word5}"
  end
end
