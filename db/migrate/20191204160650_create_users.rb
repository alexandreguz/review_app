class CreateUsers < ActiveRecord::Migration[6.0]
  def up
    create_table :users do |t|
      t.string "name", :limit => 25
      t.string "last_name", :limit => 25
      t.string "email", :default =>'', :null => false
      t.string "telephone", :limit => 15
      t.string "password", :limit => 15

      t.timestamps
    end
  end

  def down
    drop_table :users
  end

end
