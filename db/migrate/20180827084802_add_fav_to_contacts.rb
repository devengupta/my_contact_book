class AddFavToContacts < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :favorites, :boolean
  end
end
