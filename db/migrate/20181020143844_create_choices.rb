class CreateChoices < ActiveRecord::Migration[5.2]
  def change
    create_table :choices do |t|
      t.string :choice
      t.integer :request_id
      
      t.timestamps
    end
  end
end
