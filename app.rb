require 'sinatra'

class Redirector < Sinatra::Base
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
