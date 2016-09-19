class UsersController < ApplicationController
	layout 'user'
  layout 'rural', only: [:admin_new]
	skip_before_filter :require_no_authentication, only: [:cancel ]

 

  def admin_new
  	@user = User.new
  end

  def admin_create
    @user = User.new(user_params)
      if @user.save
        redirect_to rurals_path, notice: "User succesfully created!" 
      else
          render :new
      end
  end

  def admin_update
      @user = User.find(params[:id])
      if @user.update_attributes(user_params)
          redirect_to rurals_path, notice: "Updated User."
      else
          render :edit
      end
  end

  private

	def user_params
	  params.require(:user).permit(:id, :username, :password, :password_confirmation)
	end
end
