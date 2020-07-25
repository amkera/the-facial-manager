class ApplicationController < ActionController::Base

  def welcome
    redirect_to new_esthetician_session_path
  end

end
