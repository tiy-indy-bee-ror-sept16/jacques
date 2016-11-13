class NotesController < ApplicationController

def index
  @notes = Note.all
  render json: @notes
end


def show
  @note = Note.find(params[:id])
  render json: @note
end


def create
  @note = Note.new(note_params)
    if @note.save
      params[:tags].split(",").collect(&:strip).each do |x|
          @note.tags << Tag.create(name:x)
        end
      render json: @note
    else
      render json:{errors: @note.errors.full_messages.collect{ |e| {error: e}}}, status: 400
    end
end

private

def note_params
  params.permit(:title, :body)
end




end
