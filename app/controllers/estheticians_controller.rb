class EstheticiansController < ApplicationController

  before_action :find_esthetician, only: [:show, :edit, :update]

  def index
    @estheticians = Esthetician.all
  end

  def show
  end

  def new
    @esthetician = Esthetician.new
  end

  def create
    @esthetician = Esthetician.new(esthetician_params)
    if @esthetician.save
      redirect_to esthetician_path(@esthetician)
    else
      render  :new
    end
  end

  def edit
  end

  def update
    if @esthetician.update(esthetician_params)
      redirect_to esthetician_path(@esthetician)
    else
      render :edit
    end 
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
