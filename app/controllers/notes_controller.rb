class NotesController < ApplicationController
  def index
    @notes = Note.all
    render json: @notes
  end

  def create
    @note = Note.new(note_params)
    if @note.save
      check_tags
      render json: @note
    else
      render json: {errors: @note.errors.full_messages.map{ |e| { error: e } } }, status: 400

    end
  end


  private

  def check_tags
    array = params[:tags].split(', ').collect(&:strip)
    array.each { |tag| @note.tags << Tag.find_or_initialize_by(name: tag) }
  end

  def note_params
    params.permit(:title, :body, :tag)
  end
end
