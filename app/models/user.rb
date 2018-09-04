class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :contacts, :dependent => :destroy
  has_many :groups, :dependent => :destroy

  validates :email, presence: true
  validates :password, presence: true


  #callback
  after_create :fill_fake_data

  def fill_fake_data
    require 'faker'
    contact_data
  end

  def contact_data
    20.times do
      Contact.create(name: Faker::Name.name,
                     email: Faker::Internet.free_email,
                     phone: Faker::Base.numerify('+91-##########'),
                     cell: Faker::Base.numerify('+91-##########'),
                     des: Faker::Lorem.sentence,
                     birthdate: Faker::Date.birthday(18, 65),
                     user_id: self.id,
                     street: Faker::Address.street_address,
                     city: Faker::Address.city,
                     zipcode: Faker::Address.zip,
                     country: Faker::Address.country,
                     group_id: 1
                     )
    end
  end
end


