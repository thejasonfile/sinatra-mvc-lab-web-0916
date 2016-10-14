require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @text_from_user = params['user_phrase']
    @instance = PigLatinizer.new
    erb :final_text
  end
end