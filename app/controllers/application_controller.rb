class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :store_current_location, :unless => :devise_controller?    
  before_action :authenticate_user!

  private

  def store_current_location
  	if params[:controller] == 'bookings' && params[:action] == 'create'
  		store_location_for(:user, request.url.gsub('bookings', ''))
  	end
  end
end
