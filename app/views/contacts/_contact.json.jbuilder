json.extract! contact, :id, :name, :email, :phone, :cell, :des, :birthdate, :group_id, :user_id, :street, :city, :zipcode, :img_url, :country, :created_at, :updated_at
json.url contact_url(contact, format: :json)
