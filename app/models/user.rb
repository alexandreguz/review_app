class User < ApplicationRecord
  has_many :contacts, through: :user_contacts, source: :contacts
  has_many :goods
  has_many :reviews
end
