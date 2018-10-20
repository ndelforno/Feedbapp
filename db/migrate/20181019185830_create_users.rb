class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :string
      t.string :Last_name
      t.string :string
      t.string :email
      t.string :string
      t.string :password_digest
      t.string :string
      t.string :status

      t.timestamps
    end
  end
end
