class Contact < ApplicationRecord
  belongs_to :group
  belongs_to :user
  validates_uniqueness_of :email
  validates :email, presence: true
  validates :name, presence: true
  validates :phone, presence: true
  
  def self.my_contacts(current_user, options = {})
    sql_query = nil
    values = []
    sql_query = "contacts.user_id =?"
    values << current_user.id
    if not options[:favorites].blank?
      sql_query += " and favorites =?"
      values << true
    elsif not options[:letter].blank?
      sql_query += " and name like ?"
      values <<  "#{options[:letter]}%"
    elsif not options[:search].blank?
      sql_query += " and name like ? or email like ?"
      values <<  "%#{options[:search]}%"
      values <<  "%#{options[:search]}%"
    elsif not options[:number].blank?
      sql_query += " and name GLOB =?"
      values <<  '^([0-9]{1,})'
    end
   return where(sql_query, *values).order(:name)
  end

end
