class TagsController < ApplicationController

  def show
    @tag = Tag.find_by(:name => params[:name])
    render json: @tag
  end

  private

  def tag_params
    params.permit(:name)
  end

end
