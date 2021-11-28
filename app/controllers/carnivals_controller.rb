class CarnivalsController < ApplicationController
  before_action :set_carnivals
  before_action :set_carnival

  def index
    @carnivals = Carnival.all
    # @actual = Carnival.find()
  end

  def carnival
    @carnival = Carnival.find(params[:id])
  end

  private

  def set_carnivals
  end

  def set_carnival
  end
end
