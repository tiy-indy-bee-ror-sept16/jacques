class NotesController < ApplicationController

  def index
    @notes = Note.all
    render json: @notes
  end

  def create
    @note = Note.new(note_params)
    if @note.save
      tag_names
      render json: @note
    else
      render json: {errors: @note.errors.full_messages.collect {|e| {error: e}}}, status: 400
    end
  end

private

  def note_params
    params.permit(:title, :body, :tag)
  end

  def tag_names
    tags = params[:tags].split(",").collect(&:strip)
    tags.each do |tag|
      @note.tags << Tag.create(name:tag)
    end
  end

end
