class Assignment < ActiveRecord::Base
  has_many :completed_assignments
  has_many :users, through: :completed_assignments

  def self.current
    where("assigned_date <= ?", Date.today)
  end

end
