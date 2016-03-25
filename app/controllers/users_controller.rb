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
    @blogs = @user.blogs.all.order('created_at DESC')
    @blog = Blog.new()
    # redirect_to current_user if @user != current_user
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find_by_id(params[:id])
    @user.update_attributes(update_user_params)
    redirect_to user_path(@user.id)
  end


  private

  def update_user_params
    params.require(:user).permit(:name, :email, :username, :description)
  end

  def user_params
    params.require(:user).permit(:name, :email, :username, :description, :password, :password_confirmation)
  end
end
