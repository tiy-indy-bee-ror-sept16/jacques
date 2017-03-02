class NotesController < ApplicationController

  def index
    if current_user
      @notes = current_user.notes
    else
      @notes = Note.all
    end
    render json: @notes
  end

  def create
    @note = Note.new(note_params)
    if @note.save
      # Make tags
      render json: @note
    else
      render json: {errors: @note.errors.full_messages.map{|e| {error: e}}}, status: 400
    end
  end

  private

  def note_params
    params.permit(:title, :body, :tags)
  end

end
