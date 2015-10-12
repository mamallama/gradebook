class DeleteAccountTypeColumnFromParents < ActiveRecord::Migration
  def change
    remove_column :parents, :account_type, :string
  end
end
