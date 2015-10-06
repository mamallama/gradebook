class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :teacher_id
      t.integer :grade_id
      t.integer :assignment_id

      t.timestamps null: false
    end
  end
end
