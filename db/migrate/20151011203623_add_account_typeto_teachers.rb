class AddAccountTypetoTeachers < ActiveRecord::Migration
  def change
    add_column :teachers, :account_type, :string
  end
end
