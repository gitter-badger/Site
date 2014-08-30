class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_admin!
 def current_ability
  if request.fullpath =~ /\/locomotive/
    @current_ability ||= Locomotive::Ability.new(current_user)
  else
    @current_ability ||= Ability.new(current_user)
  end
end

end
