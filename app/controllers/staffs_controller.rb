class StaffsController < ApplicationController
  before_action :set_staffs

  def index
    @staffs = Staff.all
    # @actual = staff.find()
  end

  def staff
    @staff = Staff.find(params[:id])
  end

  private

  def set_staffs
  end
end
