class HomeworkController < ApplicationController
  def finish
    @completed_assignment = CompletedAssignment.find_by(id: params[:id])
  end
end
