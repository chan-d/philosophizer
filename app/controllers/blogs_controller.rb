class BlogsController < ApplicationController
  # before_filter :authorize
  def index
    @blogs = Blog.all.order("created_at DESC")
  end

  def new
    @blog = Blog.new
    render :new
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      flash[:notice] = "successfully created blog post"
      redirect_to user_path(current_user)
    else
      flash[:error] = "something went wrong"
      redirect_to blogs_path
    end
  end

  def show
    @blog = get_blog
  end

  def edit
    @blog = get_blog
  end

  def update
    @blog = get_blog
    if @blog.update_attributes(blog_params)
      @status = "success";
    else
      @status = "error";
      @errors = @blog.errors.full_messages.join(', ')
    end
    respond_to {|format| format.js}
  end

  def destroy
    blog = get_blog
    blog.destroy
    redirect_to user_path(current_user)
  end

  private

  def blog_id
    params[:id]
  end

  def get_blog
    Blog.find_by_id(blog_id)
  end

  def blog_params
    params.require(:blog).permit(:title, :post, :user_id)

  end

end
