class ProfilesController < ApplicationController
  def show
  	@user = User.find_by_email(params[:id]) #_profile_name
  	if @user
  		#@magazines = @user.magazines.all #scoping - get just the user's magazines. need to have one of them reference the other and create a relationship
  		render action: :show
  	else
  		render file: 'public/404', status: 404, formats: [:html]
    end
  end
end
