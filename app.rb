require 'sinatra'
require 'redis'

class Redirector < Sinatra::Base
  redis = Redis.new(host: '127.0.0.1', port: 16379)

  not_found do
    halt 404, 'Not found'
  end

  get '/' do
    'homepage'
  end

  get '/:short_link' do
    # Find shortlink in redis.
    # Do `redirect "http://google.com"`
  end
end
