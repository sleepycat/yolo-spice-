class SessionsController < ApplicationController

  def new_session
    @user = User.new
  end

  def create
    user = User.find_by(email: params[:user][:email])
      unless user && user.authenticate(params[:user][:password])
        user = nil
      end
  if user
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      flash[:error] = "Incorrect password."
      redirect_to login_path
    end
  end

  def logout
    reset_session
    redirect_to login_path
  end

  private

  def login_valid?(user)
    if Rails.env.test?
      if params[:email][:password_digest] == user.password_digest
        return true
      end
    elsif @user.authenticate(params[:email][:password])
      return true
    end
  end
end

#   	user = User.find_by(email: params[:user][:email])
#     user.valid_password?(params[:user][:password])
#     #user = User.authenticate(params[:email], params[:password])
#   	if user #&& user.authenticate(params[:email][:password])#&& user.authenticate(params[:email][:password])
#       session[:user_id] = user.id 
#   		redirect_to users_page, :notice => "Logged in!"
#   	else
#   		flash[:error] = "Invalid email or password"
#   		redirect_to log_in_path
#   	end
#   end

#   def logout
#     reset_session
#     redirect_to log_in_path
#   end
# end


#   # def destroy
#   # 	session[:user_id] = nil
#   # 	redirect_to root_url, :notice => "Logged out!"
#   # end


