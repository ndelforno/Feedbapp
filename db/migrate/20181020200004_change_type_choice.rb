class ChangeTypeChoice < ActiveRecord::Migration[5.2]
  def change
    remove_column :choices, :choice
    add_column :choices, :choice_text, :string
  end
end
