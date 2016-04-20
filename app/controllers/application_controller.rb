class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  helper :all
  protect_from_forgery

  def current_order
    session[:ordid] ||= Order.create!.id
    @current_order ||= Order.find(session[:ordid])
  end
end
