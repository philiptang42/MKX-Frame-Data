class CommentsController < ApplicationController

  def new
    @character = Character.find(params[:character_id])
    @move = @character.moves.find(params[:move_id])
    @comment = Comment.new
  end

  def create
    @character = Character.find(params[:character_id])
    @move = @character.moves.find(params[:move_id])
    @comment = Comment.new(comment_params)
    @comment.move_id = @move.id
    @comment.user = current_user
    if @comment.save
      redirect_to character_move_path(@character.id, @move.id)
      flash[:success] = 'New Comment Added'
    else
      flash[:errors] = @comment.errors.full_messages.join(". ")
      redirect_to character_move_path(@character.id, @move.id)
    end
  end

  def destroy
    @character = Character.find(params[:character_id])
    @move = @character.moves.find(params[:move_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    flash[:success] = "Comment Deleted!"
    redirect_to character_move_path(@character.id, @move.id)
  end

  private

  def comment_params
    params.require(:comment).permit(:rating, :body)
  end

end