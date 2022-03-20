class AddColumnToRequestsUserNameAndEmail < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :user_name , :string
    add_column :requests, :email , :string
  end
end
