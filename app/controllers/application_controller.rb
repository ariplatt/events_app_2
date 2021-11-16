class ApplicationController < ActionController::Base
  respond_to :html, :json
  before_action :authenticate_profile!

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
                                      keys: %i[event_id comment_time
                                               comment_date comment_text])

    devise_parameter_sanitizer.permit(:account_update,
                                      keys: %i[event_id comment_time
                                               comment_date comment_text])
  end
end
