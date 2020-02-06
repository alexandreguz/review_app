class AddImageToGoods < ActiveRecord::Migration[6.0]
  def change
    add_column :goods, :image, :string
  end
end
