class ArtworksController < ApplicationController
  # before_action :set_artworks

  def index
     @artworks = Artwork.all
  end

  def show
  end

  def create
    @artist = Artist.find(params[:id])
    @artwork = Artwork.new(artwork_params)
    @artwork.save

    # no need for app/views/restaurants/create.html.erb

  end

  private

  def set_artworks
   @artwork = Artwork.find(params[:id])
  end

  def artwork_params
  params.require(:artworks).permit(:title, :year, :height, :width, :depth, :technique, :about, :description, :period, :photo, :artist_id)
  end
end


