require "http"

class GamesController < ApplicationController
  def index
    # games = Game.all
    # render json: games
    response = HTTP.get("https://api.rawg.io/api/games?key=#{Rails.application.credentials.rawg_api_key}&page=1&page_size=10")
    data = JSON.parse(response.body)
    render json: data
  end

  def show
    current_game = params[:id]
    response = HTTP.get("https://api.rawg.io/api/games/#{current_game}?key=#{Rails.application.credentials.rawg_api_key}")
    game = JSON.parse(response.body)
    render json: game
  end
end
