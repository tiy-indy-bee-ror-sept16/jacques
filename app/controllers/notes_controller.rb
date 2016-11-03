class NotesController < ApplicationController

  def index
    @notes = Note.all
    render json: @notes
  end

  def create
    @note = Note.new(note_params)
    if @note.save
      tags = params[:tags].split(",").collect(&:strip)
      tags.each do |tag|
        @note.tags << Tag.find_or_initialize_by(name: tag)
      end
      render json: @note
    else
      render json: @note.errors, status: 400
    end
  end

  private

  def note_params
    params.permit(:title, :body)
  end

end
