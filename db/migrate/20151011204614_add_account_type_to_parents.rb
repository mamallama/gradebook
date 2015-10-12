class AddAccountTypeToParents < ActiveRecord::Migration
  def change
    add_column :parents, :account_type, :string
  end
end
