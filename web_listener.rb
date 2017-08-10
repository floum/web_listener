require 'sinatra'
set :requests, []

get '/' do
  "#{settings.requests}"
end

post '/' do
  settings.requests << request
  "#{request}"
end
