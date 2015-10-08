class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :name
      t.integer :grade
      t.date :date

      t.timestamps null: false
    end
  end
end
