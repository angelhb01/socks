class WelcomeController < ActionController::Base
  layout "custom_page"
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  layout "application"

  def index
    @custom_stylesheet = "welcome"
  end
end