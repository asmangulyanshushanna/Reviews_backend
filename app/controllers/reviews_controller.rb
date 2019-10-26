class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
    render json: @reviews
  end

  def create
    result = Review::Create.call(params: { comment: params.dig('reviews', 'comment'), rating: params.dig('reviews', 'rating'), hotel_id: params.dig('reviews', 'hotel_id') })[:model]
    render jsonapi: result
  end

  def update
    result = Review::Update.call(params: {id: params[:id], comment: params.dig('reviews', 'comment'), rating: params.dig('reviews', 'rating') })[:model]
  end

end