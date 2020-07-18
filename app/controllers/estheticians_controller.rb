class EstheticiansController < ApplicationController

  def index
    @estheticians = Esthetician.all
  end

  def show
    find_esthetician
  end

  def new
    @esthetician = Esthetician.new
  end

  def create
    @esthetician = Esthetician.new(esthetician_params)
    @esthetician.save
    redirect_to esthetician_path(@esthetician)
  end

  def edit
    find_esthetician
  end

  def update
    find_esthetician
    @esthetician.update(esthetician_params)
    redirect_to esthetician_path(@esthetician)
  end

  def destroy
  end

  private

  def find_esthetician
    @esthetician = Esthetician.find(params[:id])
  end

  def esthetician_params
    params.require(:esthetician).permit!
    #need to install devise and figure out the strong params for est
  end

end
