class NotesController < ApplicationController

  def index
    @notes = Note.all
    render json: @notes
  end

  def create
    @note = Note.new(note_params)
    if @note.save
      tag_names
      render json: @note, status: :created, location: @post
    else
      render json: @note.errors.full_messages, status: :bad_request
    end
  end

private

  def note_params
    params.permit(:title, :body, :tag)
  end

  def tag_names
    tags = params[:tags].split(", ")
    tags.each do |tag|
      @note.tags << Tag.create(name:tag)
    end
  end

end
