class AddingVideourlToProductsTable < ActiveRecord::Migration
  
  def change
    change_table :products do |t|
      t.string :video_url
    end
  end

end
