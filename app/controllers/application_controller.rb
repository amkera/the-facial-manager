class ApplicationController < ActionController::Base

  def welcome
  end

  private
  
  def set_esthetician
    @esthetician = current_esthetician
  end

end
