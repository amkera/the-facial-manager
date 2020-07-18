class OmniauthController < ApplicationController

  def github
    @esthetician = Esthetician.create_from_provider_data(request.env['omniauth.auth'])
    if @esthetician.persisted?
      sign_in_and_redirect @esthetician
      set_flash_message(:notice, :success, kind: 'Github') if is_navigational_format?
    else
      flash[:error] = "There was a problem signing in through Github. Please register or try again."
      #redirect_to new_esthetician_registration_url
      redirect_to clients_url
    end
  end

  def failure
    flash[:error] = "There was a problem signing in through Github. Please register or try again."
    redirect_to new_esthetician_registration_url
  end

end
