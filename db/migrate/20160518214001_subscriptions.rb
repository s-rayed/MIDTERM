class Subscriptions < ActiveRecord::Migration
  
  def change
    create_table :subscriptions do |t|
      t.string :type
      t.references :users, foreign_key: true
      t.references :product, foreign_key: true
      t.timestamps
    end
  end

end
