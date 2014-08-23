class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author
      t.text :body
      t.references :completed_assignment, index: true

      t.timestamps
    end
  end
end
