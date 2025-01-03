class SessionsController < ApplicationController
    def new
      @user = User.new
    end
  
    def create
      # lookup the user in the database
      @user = User.find_by(email: user_params[:email])
  
      if @user && @user.is_password?(user_params[:password])
        #cookies.encrypted.signed[:user_id] = @user.id
        session[:user_id]=@user.id
        redirect_to posts_path
      else
        flash.now[:notice]="invalid username password"
        render :new
      end
    end
  
    private
    def user_params
      params.require(:user).permit(:email, :password)
    end
  
  end
  