class CreateCompletedAssignments < ActiveRecord::Migration
  def change
    create_table :completed_assignments do |t|
      t.references :user, index: true
      t.references :assignment, index: true
      t.string :github_url
      t.boolean :on_time

      t.timestamps
    end
  end
end
