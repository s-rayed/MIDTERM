class Subscriptions < ActiveRecord::Migration
  
  def change
    create_table :subscriptions do |t|
      t.references :users, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true
      t.timestamps
    end
  end

end
