class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:Email])
    if user && user.authenticate(params[:session][:password_digest])
      redirect_to signup_path
      log_in user
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
  end
end
