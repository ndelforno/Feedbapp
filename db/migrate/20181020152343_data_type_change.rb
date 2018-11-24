class DataTypeChange < ActiveRecord::Migration[5.2]
  def change
    remove_column :requests, :string
    remove_column :responses, :string
    remove_column :responses, :integer
    remove_column :requests, :integer
    remove_column :users, :string
    change_column :requests, :user_id, :integer, USING user_id::integer
    change_column :responses, :user_id, :integer, USING user_id::integer
    change_column :responses, :choice_id, :integer, USING choice_id::integer
  end
end
