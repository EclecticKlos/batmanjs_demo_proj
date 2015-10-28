class PostsController < ApplicationController
  respond_to :json

  def index
    respond_with Post.all
  end

  def show
    respond_with Post.find(params[:id])
  end

  # For validation responders cannot be used as Batman expects errors not to have root
  def create
    @post = Post.new(params[:post])
    respond_to do |format|
      if @post.update_attributes(params[:post])
        format.json { render :json => @post }
      else
        format.json { render :json => @post.errors, :status => :unprocessable_entity}
      end
    end
  end

  def destroy
    respond_with Post.destroy(params[:id])
  end

end
