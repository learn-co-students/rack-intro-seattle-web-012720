require 'rack'

# Instances of Proc automatically have a call method that runs the block that they're initialized with.
my_server = Proc.new {
    [200, {'Content-Type' => 'text/html'}, ['<em>Hello/<em>']]
}
   
  run my_server