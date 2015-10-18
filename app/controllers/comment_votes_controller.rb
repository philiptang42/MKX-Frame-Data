class CommentVotesController < ApplicationController

  def new
    @food_truck = FoodTruck.find(params[:food_truck_id])
    @review = @food_truck.reviews.where(id: params[:review_id])
    @vote = Vote.new(review_id: params[:review_id],user_id: current_user.id)
  end

  def create
    @character = Character.find(params[:character_id])
    @move = @character.moves.find(params[:move_id])
    @comment = Comment.find(params[:id])
    vote_check = CommentVote.find_by(comment_id: params[:comment_id],
                              user_id: current_user)

    if vote_check.nil?
      @comment_vote = CommentVote.new(review_id: params[:review_id], user_id: current_user.id)
    else
      @comment_vote = vote_check.destroy_if_exists(params[:vote_type])
    end

    if !@comment_vote.nil?
      @comment_vote.change_vote(params[:vote_type])
      @comment_vote.save
    end

    respond_to do |format|
      check_review = Comment.find(params[:comment_id])
      format.html
      format.json { render json: check_comment_vote.score }
    end
  end
end
