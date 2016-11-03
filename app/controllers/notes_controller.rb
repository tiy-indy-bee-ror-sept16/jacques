class NotesController < ApplicationController

  def index
    @notes=Note.all
    render json: @notes
  end

  def new
    @note=note.new
  end

  def create
    
    render json: @notes
  end


  def destroy

  end


end
