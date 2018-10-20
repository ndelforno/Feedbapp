class CreateResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :responses do |t|
      t.string :user_id
      t.string :integer
      t.integer :request_id
      t.string :choice_id
      t.string :integer
      t.string :comment
      t.string :string

      t.timestamps
    end
  end
end
