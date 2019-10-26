class HotelsController < ApplicationController


  def index
    @hotels = Hotel.all
    render json: @hotels
  end

  def create
    result = Hotel::Create.call(params: { name: params.dig('hotels', 'name'), address: params.dig('hotels', 'address'), stars: params.dig('hotels', 'stars') })[:model]
    render json: result
  end

  def update
    result = Hotel::Update.call(params: {id: params[:id], address: params.dig('hotels', 'address'), stars: params.dig('hotels', 'stars') })[:model]
  end
end