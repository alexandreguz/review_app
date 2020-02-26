class Review < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :good

  validates :opinion, presence:  true #{ message: "must be given please" }
  validates :stars, numericality: { greater_than_or_equal_to: 0 }
  validates :stars, numericality: { less_than_or_equal_to: 5}
end
