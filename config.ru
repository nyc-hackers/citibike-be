require_relative "server"

require "rack/cors"

use Rack::Cors do
  allow do
    origins '*'
    # TODO lock this down
    resource '*', :headers => :any, :methods => [:get, :post, :options, :put, :delete]
  end
end

run CitibikeBackEnd