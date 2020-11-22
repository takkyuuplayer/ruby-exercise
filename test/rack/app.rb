require 'rack'

class App
  def call(env)
    req = Rack::Request.new(env)
    pp req.params
    status = 200
    headers = {
      "Content-Type" => "text/plain",
    }
    body = ['sample']
    [status, headers, body]
  end
end
