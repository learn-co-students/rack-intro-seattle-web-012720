require 'rack'

class Application

  def call(env)
    resp = Rack::Response.new
    resp.write "Hello, my name is Jonny"
    resp.finish
  end

end

