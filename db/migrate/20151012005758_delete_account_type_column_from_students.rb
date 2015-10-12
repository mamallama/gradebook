class DeleteAccountTypeColumnFromStudents < ActiveRecord::Migration
  def change
    remove_column :students, :account_type, :string

  end
end
