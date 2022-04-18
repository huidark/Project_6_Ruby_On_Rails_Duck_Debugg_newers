class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email])
    if user #&& user.authenticate(sess_params2)
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

  # def sess_params
  #   params.require(:session).permit(:password_digest)
  # end
  # def sess_params2
  #   params.permit(:password_digest)
  # end

  def destroy
  end
end
