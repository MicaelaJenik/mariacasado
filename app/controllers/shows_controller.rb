class ShowsController < ApplicationController
  before_action :set_shows

  def index
    @shows = Show.all
    # @actual = Show.find()
  end

  def show
    @show = Show.find(params[:id])
  end

  private

  def set_shows
  end

end
