class PlacesController < ApplicationController
  def show
    @place = Place.find(params[:id])
    @recommendations = @place.recommendations.paginate(page: params[:page], per_page: 33)
  end
end
