require 'rack'
 
class MyServer
    def call(environment)
        return [200, {'Content-Type' => 'text/html'}, pretty_response]
    end

    def pretty_response
        (Time.now.to_i % 2).zero? ?  ["<em>Hello</em>"] : ["<strong>Hello</strong>"]
    end
end

# Something that responds to call, that's what Rack demands

 
run MyServer.new