class ApplicationController < ActionController::Base
  before_action :set_locale
  protect_from_forgery with: :exception
  helper_method :extract_locale_key

  protected
  def set_locale
      I18n.locale = extract_locale_from_tld || I18n.default_locale
  end

  def extract_locale_from_tld
      parsed_locale = request.host.split('.').first
      I18n.available_locales.map(&:to_s).include?(parsed_locale) ? parsed_locale : nil
  end

  protect_from_forgery with: :exception
end
