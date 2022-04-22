class SessionsController < ApplicationController
  def new
  end

  # POST /sessions
  def create

    user = User.find_by(email: params[:session][:email])
    if user #&& user.authenticate(sess_params2)
      log_in user
      # Controls which view the user sees, dependent on if they're an admin or a user
      if user.admin
        redirect_to dashboardA_path
      else 
        redirect_to dashboardU_path
      end
      
    else # Incorrect email address/need to make an account
      redirect_to login_path, alert: "Email/password combination not found"
    end
  end
  def destroy
    log_out
    redirect_to root_url
  end
end
