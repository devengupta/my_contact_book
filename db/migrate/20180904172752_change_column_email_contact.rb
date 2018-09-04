class ChangeColumnEmailContact < ActiveRecord::Migration[5.1]
  def change
    add_index :contacts, :email, unique: true
  end
end
