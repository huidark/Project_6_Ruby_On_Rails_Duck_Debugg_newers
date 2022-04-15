class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email])
    if user #&& user.authenticate(params[:session][:password_digest])
      log_in user
      if user.admin
        redirect_to dashboardA_path
      else 
        redirect_to dashboardU_path
      end
      
    else
      #redirect_to signup_path
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
  end
end
