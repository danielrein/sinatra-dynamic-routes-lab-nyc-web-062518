require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/reversename/:name' do
    erb :name.reverse
  end

  get '/square/:number' do
    erb "#{:number.to_i * :number.to_i}"
  end

  get '/say/:number/:phrase' do
    string = ''
    n = :number.to_i
    n.times { string += :phrase }
    erb string
  end

  get '/square/:number' do
    erb :number.to_i.square
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    erb "#{word1} #{word2} #{word3} #{word4} #{word5}"
  end

  get '/:operation/:number1/:number2' do
    x, y = :number1.to_i, :number2.to_i
    if :operation.to_s == 'add'
      result = x + y
    elsif :operation.to_s == 'subtract'
      result = x - y
    elsif :operation.to_s == 'multiply'
      result = x * y
    elsif :operation.to_s == 'divide'
      result = x / y
    else
      result = "Route Not Found"
    end
  end
  erb result
end
