class MovesController < ApplicationController

  def show
    @character = Character.find(params[:character_id])
    @move = @character.moves.find(params[:id])
    @comments = @move.comments.page params[:page]
    @comment = Comment.new
  end

end
