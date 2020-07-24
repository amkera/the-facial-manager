class FacialsController < ApplicationController
  before_action :find_facial, only: [:show, :edit, :update]

  def show
    find_facial
  end

  def index
    if params[:esthetician_id]
      @facials = Esthetician.find(params[:esthetician_id]).facials
    else
      @facials = Facial.all
    end
  end

  #We added a conditional to the facials#index action to account for whether the user is
  #trying to access the index of all facials (Facial.all) or just the index of all
  #facials by a certain est

  #The conditional hinges on whether there's an :esthetician_id key in the params hash —
  #in other words, whether the user navigated to /estheticians/:id/facials or simply /facials

  #params[:esthetician_id] is provided by Rails through the nested route.
  #so we don't have to worry about a collision with the :id parameter that facials#show is looking for.

  def new
    if params[:esthetician_id] && !Esthetician.exists?(params[:esthetician_id])
      redirect_to estheticians_path, alert: "Esthetician not found."
    else
      @facial = Facial.new(esthetician_id: params[:esthetician_id])
      @esthetician = Esthetician.find_by(id: params[:esthetician_id])
    end
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
    if params[:esthetician_id]
      esthetician = Esthetician.find_by(id: params[:esthetician_id])
      if esthetician.nil?
        redirect_to estheticians_path, alert: "Esthetician not found."
      else
        @facial = esthetician.facials.find_by(id: params[:id])
        redirect_to esthetician_facials_path(esthetician), alert: "Facial Appointment Not Found." if @facial.nil?
      end
    else
      @facial = Facial.find(params[:id])
    end
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
    #:client_id, :esthetician_id
  end



end
