class AddStarsToReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :stars, :integer, default: 0
  end
end
