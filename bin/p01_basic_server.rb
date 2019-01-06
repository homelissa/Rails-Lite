require 'rack'

app = Proc.new do |env|
    req = Rack::Request.new(env)
    p req
    res = Rack::Response.new 
    res['Content-Type'] = 'text/html'
    res.write(req.path)
    res.finish
end 

Rack::Server.start(
    app: app,
    Port: 3000
)