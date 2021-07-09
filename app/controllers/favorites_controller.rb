class FavoritesController < ApplicationController
  before_action :authenticate_user

  def index
    if current_user
      favorites = current_user.favorites
      render json: favorites
    else
      render json: { message: "User must be logged in to see their favorites." }
    end
  end

  def create
    if current_user
      favorite = Favorite.new(
        user_id: current_user.id,
        game_id: params[:game_id],
        background_image: params[:background_image],
        name: params[:name],
        rating: params[:rating],
        review: params[:review],
      )
      favorite.save
      render json: favorite
    else
      render json: { message: "User must be logged in to create a favorited list. " }
    end
  end

  def update
    if current_user
      favorite = Favorite.find_by(id: params[:id])
      favorite.game_id = params[:game_id] || favorite.game_id
      favorite.rating = params[:rating] || favorite.rating
      favorite.review = params[:review] || favorite.review
      favorite.save
      render json: favorite
    else
      render json: { errors: favorite.errors.full_messages }, status: :bad_request
    end
  end

  def show
    favorite = Favorite.find_by(id: params[:id])
    render json: favorite
  end

  def destroy
    if current_user
      favorite = Favorite.find_by(id: params[:id])
      favorite.destroy
      render json: { message: "Favorite successfully removed." }
    else
      render json: { errors: favorite.errors.full_messages }, status: :bad_request
    end
  end
end
