class ApplicationController < ActionController::Base
  before_action :set_esthetician

  def welcome
  end

  private

  def set_esthetician
    @esthetician = current_esthetician
  end

end
