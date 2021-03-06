require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end
  
  get '/square/:number' do
    "#{params[:number].to_i ** 2}"
  end
  
  get '/say/:number/:phrase' do
    @say_str = ''
    params[:number].to_i.times do
      @say_str += (params[:phrase] + "\n")
    end
    @say_str
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    
  end
  
  get '/:operation/:number1/:number2' do
    @op_list = { "add" => :+, "subtract" => :-, "multiply" => :*, "divide" => :/ }
    params[:number1].to_i.send(@op_list[params[:operation]], params[:number2].to_i).to_s
  end

end