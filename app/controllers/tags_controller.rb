class TagsController < ApplicationController

  def create
    @tags = Tag.all
    render json: @tags
    @tags = Tag.find_by()

  end
end
