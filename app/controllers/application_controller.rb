class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def allow_cross_domain_access
  	response.headers["Access-Control-Allow-Methods"] = "GET, PUT, POST, DELETE"
  end

end
