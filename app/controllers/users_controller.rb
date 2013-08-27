class UsersController < ApplicationController

  before_action :check_user_login, except: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    binding.pry
    if @user.save
      #UserMailer.confirm_email(@user).deliver
      redirect_to user_path(@user), :notice => "Signed up!"
    else
      render action: :new
    end
  end

  def show
    @user = User.find(params[:id])
    #@user_magazines = @user.magazines
  end

  def edit
  end

  def update
    @current_user.update_attributes(user_params)
    redirect_to user_path(@current_user)
  end

  def confirm
    head :ok
  end

  private

  def user_params
     params.require(:user).permit(:email, :password, :password_confirmation)
  end

  def check_user_login
    true
  end

end
#def new
#     @user = User.new
#   end

#   def create
#       @user = User.new(user_params)
#       if @user.save
#         respond_to do |format|
#           format.html { redirect_to users_url,
#             notice: "User #{@user.email} was successfully created."
#           }
#            format.json { render action: 'show',
#             status: :created, location: @user }
#       else
#         respond_to do |format|
#           format.html { render action: 'new' }
#           format.json { render json: @user.errors,
#             status: :unprocessable_entity }
        
#       end
#   end

#   # def create
#   #   @user = User.create(user_params)
#   #   if @user.save
#   #     redirect_to user_path(@user)
#   #   else
#   #     render action: :new
#   #   end
#   # end

#   # def show
#   #   @user = User.find(params[:id])
#   # end

#   # def edit
#   #   @user = User.find(params[:id])
#   # end

   def index
     @users = User.order(:name)
   end

#   def update
#     respond_to do |format|
#       if @user.update(user_params)
#         format.html { redirect_to users_url,
#           notice: "User #{@user.email} was successfully updated." }
#           format.json { head :no_content }
#         else 
#           format.html { render action: 'edit' }
#           format.json { render json: @user.errors,
#             status: unprocessable_entity }
#     # @user = User.find(params[:id])
#     # @user.update_attributes(user_params)
#     # redirect_to user_path(@user)
#       end
#     end
#   end

#   # def destroy
#   # end
#   def destroy
#     reset_session
#     redirect_to new_session_path
#   end

#   private

#   # def login_valid?(user)
#   #   if Rails.env.test?
#   #     if params[:email][:password_digest] == user.password_digest
#   #       return true
#   #     end
#   #   elsif @user.authenticate(params[:email][:password])
#   #     return true
#   #   end
#   # end

#   def user_params
#     params.require(:user).permit(:email, :password, :password_confirmation)
#   end

# end
# #   def index
# #   	@users = User.order(:email)
# #   end

# #   def show
# #   end

# #   def new
# #   	@user = User.new
# #   end

# #   def create
# #   	@user = User.new(user_params)

# #   	if @user.save
# #   		redirect_to user_path(@user)
# #   	else
# #   		render action: :new
# #   	end
# #   end
# #  #  	@user = User.new(user_params) #not sure if User.create instead of user.create
# # 	# @user.password = params[:password]
# # 	# if @user.save
# # 	# 	format.html { redirect_to users_url, :notice => "User #{@user.email} was successfully created!" } #want this to be user.name but I don't have a name or handle field yet.
# # 	# 	format.json { render action: 'show', 
# # 	# 		status: :created, location: @user }
# # 	# else
# # 	# 	format.html { render action: 'new' }
# # 	# 	format.json { render json: @user.errors,
# # 	# 		status: :unprocessable_entity }
# # 	# end  
# #   #end

# #   def edit
# #   end

# #   def update
# #   	respond_to do |format|
# #   		if @user.update(user_params)
# #   			format.html { redirect_to users_url,
# #   				notice: "User #{user.email} was successfully updated!" } #again, want to change to name or handle
# #  			format.json { render json: @user.errors, 
# #  				status: unprocessable_entity }
# #   		end
# #   	end
# #   end

# #   def destroy
# #   end


# #   private

# #   def user_params
# #     params.require(:user).permit(:email, :password)
# #   end
 
# # end
