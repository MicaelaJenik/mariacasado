class ArtistsController < ApplicationController
  before_action :set_artists
  # has_many :artworks

  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  private

  def set_artists
  end
end
