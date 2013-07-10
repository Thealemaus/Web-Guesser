require 'sinatra'
require 'sinatra/reloader'


number = (1 + rand(99))

get "/" do
	message = choose_message(params["guess"], number)
	erb :index, :locals => {:number => number, :message => message}
end

def choose_message(guess, number)
	if guess.nil?
		""
	elsif guess.to_i > number
		"Too high!"
	elsif guess.to_i < number
		"Too low!"
	else guess.to_i == number
		"You got it right! 
		The Secret Number was #{number}"
	end
end