require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do 
    @namereversed = params[:name].reverse
    "#{@namereversed}"
  end

  get '/square/:number' do 
    @squarenumber = params[:number].to_i * params[:number].to_i
    "#{@squarenumber}"
  end

  get '/say/:number/:phrase' do
    answer = ''
    params[:number].to_i.times do 
      answer += "#{params[:phrase]}"
    end
    answer
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do 
    if params[:operation] == "add"
      @answer = params[:number1].to_i + params[:number2].to_i
      "#{@answer}"
    elsif params[:operation] == "subtract"
      @answer = params[:number1].to_i - params[:number2].to_i
      "#{@answer}"
    elsif params[:operation] == "multiply" 
      @answer = params[:number1].to_i * params[:number2].to_i
      "#{@answer}"
    elsif params[:operation] == "divide"
      @answer = params[:number1].to_i / params[:number2].to_i
      "#{@answer}"  
    end
  end
  
end



 