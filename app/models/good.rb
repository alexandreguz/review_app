class Good < ApplicationRecord
  belongs_to :user, optional: true
  has_many :reviews
  mount_uploader :image, ImageUploader
end
