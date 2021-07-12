class ArtistsController < ApplicationController
  before_action :set_artists

  def index
  end

  def show
  end

  private

  def set_artists
    @artists = Artist.all
  end
end
