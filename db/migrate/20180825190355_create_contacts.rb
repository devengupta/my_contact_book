class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :cell
      t.text :des
      t.date :birthdate
      t.integer :group_id
      t.integer :user_id
      t.string :street
      t.string :city
      t.string :zipcode
      t.string :img_url
      t.string :country

      t.timestamps
    end
  end
end
