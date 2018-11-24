class DataTypeChange < ActiveRecord::Migration[5.2]
  def change
    remove_column :requests, :string
    remove_column :responses, :string
    remove_column :responses, :integer
    remove_column :requests, :integer
    remove_column :users, :string
    change_column :requests, :user_id, 'integer USING CAST(user_id AS integer)'
    change_column :responses, :user_id, 'integer USING CAST(user_id AS integer)'
    change_column :responses, :choice_id, 'integer USING CAST(choice_id AS integer)'
  end
end
