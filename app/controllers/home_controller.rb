class HomeController < ApplicationController

  before_filter :authenticate

  def authenticate
    authenticate_or_request_with_http_basic('Administration') do |username, password|
      session[:admin] = true
      username == 'admin' && password == 'admin'
    end
  end

  def home

  end

  def admin

  end

  def rental

  end
end