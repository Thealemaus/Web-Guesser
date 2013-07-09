require 'sinatra'
require 'sinatra/reloader'
@user_guess = ""

number = (1 + rand(99))

get "/" do
	@user_guess = params["guess"].to_i
	erb :index, :locals => {:number => number}
end