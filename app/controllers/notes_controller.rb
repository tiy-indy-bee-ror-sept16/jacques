class NotesController < ApplicationController

def index
  @notes = Note.all
  render json: @notes
end


def create
  @note = Note.new(note_params)
    if @note.save
      render json: @note
    else
      render json: @note.errors
    end
end


def note_params
  params.permit(:title, :body, :tags)
end


end
