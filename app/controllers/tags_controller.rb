class TagsController < ApplicationController

  def show
    @tag = Tag.find_by(name: params[:id])
    render json: @tag, include: 'notes.tags'
  end


end
