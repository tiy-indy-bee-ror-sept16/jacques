class TagsController < ApplicationController

  def create
    @tags = Tag.all
    render json: @tags
  end
end
