class ChangeUserLastName < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :Last_name
    add_column :users, :last_name, :string
  end
end
