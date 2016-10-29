class ApplicationController < ActionController::Base
  before_action :set_locale
  protect_from_forgery with: :exception
  helper_method :extract_locale_key

  rescue_from CanCan::AccessDenied do |exception|
    flash[:alert] = current_user ? t('not_authorised') : t('not_authenticated')
    redirect_to :root
  end

  protected
  def set_locale
      I18n.locale = extract_locale_key
  end

  def extract_locale_key
      parsed_locale = request.host.split('.').first
      I18n.available_locales.map(&:to_s).include?(parsed_locale) ? parsed_locale : I18n.default_locale
  end

  protect_from_forgery with: :exception
end
