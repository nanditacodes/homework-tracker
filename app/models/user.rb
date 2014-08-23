class User < ActiveRecord::Base
  has_many :completed_assignments
  has_many :assignments, through: :completed_assignments

  def get_completed_assignment(assignment)
    completed_assignments.find_by(assignment_id: assignment.id)
  end
end
