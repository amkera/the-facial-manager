class FacialsController < ApplicationController
  def index
    @facials = Facial.all
  end

  def show
    find_facial
  end

  def new
    @facial = Facial.new
  end

  def create
    @facial = Facial.new(facial_params)
    @facial.save
    redirect_to facial_path(@facial)
  end

  def edit
    find_facial
  end

  def update
    find_facial
    @facial.update(facial_params)
    redirect_to facial_path(@facial)
  end

  def destroy
  end

  private

  def find_facial
    @facial = Facial.find(params[:id])
  end

  def facial_params
    params.require(:facial).permit!
  end



end
