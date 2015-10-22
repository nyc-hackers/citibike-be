require "sinatra/base"
require "httparty"
require 'json'

class CitibikeBackEnd < Sinatra::Base

  get('/station-status') do
    content_type :json

    data = HTTParty.get("http://www.citibikenyc.com/stations/json")
    JSON.parse(data.body).to_json
  end
end
