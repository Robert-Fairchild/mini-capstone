class ApplicationController < ActionController::API
  include Knock::Authenticable

  def authenticate_admin

  end
end 
