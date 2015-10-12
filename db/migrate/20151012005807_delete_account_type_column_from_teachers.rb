class DeleteAccountTypeColumnFromTeachers < ActiveRecord::Migration
  def change
    remove_column :teachers, :account_type, :string
  end
end
