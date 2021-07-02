class FavoritesController < ApplicationController
  def create
    favorite = Favorite.new(
      user_id: params[:user_id],
      game_id: params[:game_id],
      rating: params[:rating],
      review: params[:review],
    )
    favorite.save
    render json: favorite.as_json
  end
end
