class NotesController < ApplicationController

  def index
    @notes=Note.all
    render json: @notes
  end

  def new
    @note=note.new
  end

  def create
    @note=note.new(note_params)
    if @note.save
      if @user
        render json:@note
      end
      else
        render json [""], status: 400
    end
    render json: @notes
  end


  def destroy

  end


end
