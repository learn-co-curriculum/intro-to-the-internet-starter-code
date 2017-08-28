require 'rack'
require 'shotgun'
require 'pry'

class Application

  def call(env)
    req = Rack::Request.new(env)
    resp = Rack::Response.new

    # [200, {'content-type' => 'text/html'}, ['Live reloading!!!']]

    if req.path.match('/about')
      resp.write 'This is a Web Application'
    elsif req.path.match('/')
        resp.write 'Welcome! This is the root'
    end

    # /search?name=rachel
    # resp to be 'Hey Rachel'

    # /search?name=max
    # resp to be 'Hey Max'

    #/search?name=<anything>
    #resp 'idk that person'



    resp.finish
  end


end

run Application.new
