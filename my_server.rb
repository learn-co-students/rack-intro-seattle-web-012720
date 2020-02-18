class MyServer
    def call(env)
      return [ 200, {'Content-Type' => 'text/html'}, pretty_response ]
    end
   
    def pretty_response
      (Time.now.to_i % 2).zero? ?  ["<em>Why Hello There</em>"] : ["<strong>Hello dear friend</strong>"]
    end
  end