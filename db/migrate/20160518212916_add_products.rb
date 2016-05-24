class AddProducts < ActiveRecord::Migration
  
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.integer :frequency
      t.string :description
      t.string :content, array: true
      t.string :url
    end
  end

end
