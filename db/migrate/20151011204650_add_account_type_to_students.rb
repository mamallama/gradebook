class AddAccountTypeToStudents < ActiveRecord::Migration
  def change
    add_column :students, :account_type, :string
  end
end
