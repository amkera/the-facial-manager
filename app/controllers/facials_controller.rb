class FacialsController < ApplicationController

  def show
    @facial = Facial.find(params[:id])
  end

  def index
    @facials = Facial.all
  end

  def new
    @facial = Facial.new
  end

  def create
    @facial = Facial.new(facial_params)
    @facial.save
    redirect_to facial_path(@facial)
  end

  private
  def facial_params
    params.require(:facial).permit(:facial_date, :facial_time, :acne, :cystic_acne, :deep_pitted_scars, :dryness, :dullness, :flakiness, :flat_dark_scars, :redness, :wrinkles, :other, :client_id, :esthetician_id)
  end



end
