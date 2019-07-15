# frozen_string_literal: true

require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    pig_latinizer = PigLatinizer.new
    @latin = pig_latinizer.piglatinize(params[:user_phrase])
    erb :pig_latin
  end
end
