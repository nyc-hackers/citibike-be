require 'sinatra'
require 'HTTParty'
require 'JSON'

get('/') do
  data = HTTParty.get("http://www.citibikenyc.com/stations/json")
  parsed = JSON.parse(data.body)
  return parsed
end