class TagsController < ApplicationController

  # GET /tags
  # GET /tags.json
  def index
    @tags = Tag.all
  end

  def create
    @tag = Tag.new(params.require(:post).permit(tags_attributes: [:name]))
    if @tag.save
      redirect_to post_path(params[:post])
    else
      redirect_to new_post_path
    end
  end


  # GET /tags/1
  # GET /tags/1.json
  def show
    @tag = Tag.find(params[:id])
  end

end
