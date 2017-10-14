class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def eres_administrador
  	unless current_user.admin?
  		redirect_to root_path, notice: "no eres administrador"
  	end
  	
  end
end
