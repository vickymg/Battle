require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    $new_game = Game.new(params[:player_1_name], params[:player_2_name])
    redirect to('/play')
  end

  get '/play' do
    @new_game = $new_game
    erb(:play)
  end

  get '/attack_confirmation' do
    @new_game = $new_game
    @new_game.attack#(@new_game.player_2)
    erb(:attack_confirmation)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
