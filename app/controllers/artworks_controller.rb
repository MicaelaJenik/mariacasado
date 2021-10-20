class ArtworksController < ApplicationController
  # before_action :set_artworks

  def index
     @artworks = Artwork.all
  end

  def show
  end

  def create
    @artwork = Artwork.new(artwork_params)
    @artwork.save

    # no need for app/views/restaurants/create.html.erb

  end

  private

  def set_artworks
   @artwork = Artwork.find(params[:id])
  end

  def artwork_params
  params.require(:artworks).permit(:description, :height, :photo, :name)
  end
end
