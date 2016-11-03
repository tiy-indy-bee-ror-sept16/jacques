class NotesController < ApplicationController

  def index
    @notes = Note.all
    render json: @notes
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.new(note_params)
    if @note.save
      params[:tags].split(',').each do |t|
        add = Tag.find_or_initialize_by(name: t.strip)
        @note.tags << add
      end
      render json: @notes
    else
        render json: @notes.errors, status: 400
    end
  end



  private

  def note_params
    params.permit(:title, :body)
  end
end
