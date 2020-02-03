class CreateGoods < ActiveRecord::Migration[6.0]
  def change
    create_table :goods do |t|
      t.string :product
      t.string :brand
      t.text :detail


      t.timestamps
    end
  end
end
