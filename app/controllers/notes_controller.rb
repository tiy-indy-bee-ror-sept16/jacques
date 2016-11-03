class NotesController < ApplicationController

def index
  @notes = Note.all
  render json: @notes
end

def create
  @note= Note.new(note_params)
  if @note.save
    check_tags
    render json: @note
  else
    render json: @note.errors
  end
end

def note_params
   params.permit(:title, :body, :tag)
end

private

def check_tags
  array = params[:tags].split(", ")
  # array.each{ |tag| @note.tags << Tag.create(name: tag.strip) }
end







end
