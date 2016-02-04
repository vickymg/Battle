require 'sinatra/base'
require './lib/player'

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
    @player_1_name = $new_game.player_1.name
    @player_2_name = $new_game.player_2.name
    @player_1_HP = $new_game.player_1.hit_points
    @player_2_HP = $new_game.player_2.hit_points
    erb(:play)
  end

  get '/attack_confirmation' do
    @player_1 = $new_game.player_1
    @player_2 = $new_game.player_2
    @player_1_name = $new_game.player_1.name
    @player_2_name = $new_game.player_2.name
    $new_game.attack(@player_2)
    @player_1_HP = $new_game.player_1.hit_points
    @player_2_HP = $new_game.player_2.hit_points
    erb(:attack_confirmation)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
