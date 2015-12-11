require 'sinatra'

class Redirector < Sinatra::Base
  get '/' do
    'homepage'
  end

  get '/:short_link' do
    "i'm redirecting you to #{params[:short_link]}"
  end
end
