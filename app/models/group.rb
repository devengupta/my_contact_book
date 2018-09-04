class Group < ApplicationRecord
  has_many :user
  validates :name, format: { with: /\A[a-zA-Z]+\z/,
                                       message: "only allows letters" }
end
