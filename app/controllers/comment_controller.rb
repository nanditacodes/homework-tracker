class CommentController < ApplicationController
  before_action :set_completed_assignment, only: [:show, :create]

  def show
    @comment = Comment.new
  end

  def create
    @comment = @completed_assignment.comments.build(comment_params)
    if @comment.save
      redirect_to show_path
    else
      render :login
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:completed_assignment_id,:author, :body)
    end

    def set_completed_assignment
      @completed_assignment = CompletedAssignment.find(params[:homework_id])
    end

end
