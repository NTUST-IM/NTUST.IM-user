class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :get_app_setting

  private

  def get_app_setting
    @google_analytics_id = Setting.google_analytics_id
  end
end
