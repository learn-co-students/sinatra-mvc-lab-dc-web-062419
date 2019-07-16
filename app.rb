require_relative 'config/environment'

class App < Sinatra::Base
  set :show_exceptions => false

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @piglatin = PigLatinizer.new.piglatinize(params[:user_phrase])
    erb :piglatinize
  end
end
