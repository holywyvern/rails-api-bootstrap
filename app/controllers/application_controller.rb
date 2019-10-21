class ApplicationController < ActionController::API
  before_action :use_locale

  private

  def use_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end
end
