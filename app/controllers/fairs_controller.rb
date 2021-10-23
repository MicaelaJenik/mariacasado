class FairsController < ApplicationController

  def index
    @fairs = Fair.all
  end

  def show
    @fair = Fair.find(params[:id])
  end
end
