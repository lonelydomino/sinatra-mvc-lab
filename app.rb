require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        obj = PigLatinizer.new
        @latin_text = obj.piglatinize(params[:user_phrase])

        erb :results
    end
end