class CompletedAssignment < ActiveRecord::Base
  belongs_to :user
  belongs_to :assignment
  validates :user, presence: true
  validates :assignment, presence: true

  after_validation on: :create do
    self.on_time = Date.today <= assignment.due_date
  end
end
