class UsersController < ApplicationController

  def new

  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to root_path
    else
      redirect_to '/signup'
    end
  end

  def show
    @user = User.find(params[:id])
    @blog = @user.blogs.all.order("created_at DESC")
      if @user != current_user
          redirect_to current_user
      end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :username, :description, :password, :password_confirmation)
  end

end
