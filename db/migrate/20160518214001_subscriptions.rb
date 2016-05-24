class Subscriptions < ActiveRecord::Migration
  
  def change
    create_table :subscriptions do |t|
      t.references :users
      t.references :product
      t.timestamps
    end
  end

end
