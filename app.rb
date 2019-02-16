require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end
  
  get '/square/:number' do
    "#{params[:number].to_i ** 2}"
  end
  
  get '/say/:number/:phrase' do
    params[:number].to_i.times do
      "#{params[:phrase]}"
    end
    status 200
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    
  end
  
  get '/:operation/:number1/:number2' do
    
    @result = params[:number1]
  end

end