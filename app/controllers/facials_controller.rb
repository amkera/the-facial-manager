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
    #byebug
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
    @facial = Facial.find_by(id: params[:id])
    #facial.find_by(id: params[:id])
  end

  def facial_params
    params.require(:facial).permit(:facial_date, :facial_time, :acne, :cystic_acne, :deep_pitted_scars, :dryness, :dullness, :flakiness, :flat_dark_scars, :redness, :wrinkles, :other, :client_id, :esthetician_id)
  end

end
