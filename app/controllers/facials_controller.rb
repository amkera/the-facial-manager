class FacialsController < ApplicationController
  before_action :find_facial, only: [:show, :edit, :update]

  def show
  end

  def index
    @facials = Facial.all
  end

  def new
    @facial = Facial.new
  end

  def create
    @facial = Facial.new(facial_params)
    if @facial.save
      redirect_to facial_path(@facial)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @facial.update(facial_params)
      redirect_to facial_path(@facial)
    else
      render :edit
    end
  end

  def destroy
    Facial.find(params[:id]).destroy
    flash[:notice] = "This facial appointment has been removed."
    redirect_to facials_url
  end




  private

  def find_facial
    @facial = Facial.find(params[:id])
  end

  def facial_params
    params.require(:facial).permit(:facial_date, :facial_time, :acne, :cystic_acne, :deep_pitted_scars, :dryness, :dullness, :flakiness, :flat_dark_scars, :redness, :wrinkles, :other, :client_id, :esthetician_id)
  end



end
