class ArtworksController < ApplicationController
  before_action :set_artworks

  def index
  end

  def show
  end

  private

  def set_artworks
    @artworks = Artworks.all
  end
end
