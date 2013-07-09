require 'sinatra'
require 'sinatra/reloader'


secret_number = x = (1 + rand(99)).to_s

get "/" do
	
	"the secret number is #{secret_number}"
end