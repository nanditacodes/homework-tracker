class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :title
      t.text :description
      t.date :assigned_date
      t.date :due_date

      t.timestamps
    end
  end
end
