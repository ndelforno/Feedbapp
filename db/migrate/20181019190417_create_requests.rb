class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.string :question
      t.string :string
      t.string :user_id
      t.string :integer
      t.string :image
      t.string :string

      t.timestamps
    end
  end
end
