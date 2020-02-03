class UserContact < ApplicationRecord
  has_many :contacts, :foreign_key => "contact_id", :class_name => "Users"
  belongs_to :user
  
end
