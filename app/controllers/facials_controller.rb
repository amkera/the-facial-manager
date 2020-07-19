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
    @facial = Facial.new
    @facial.save
    redirect_to facial_path(@facial)
  end



end
