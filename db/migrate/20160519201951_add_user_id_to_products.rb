class AddUserIdToProducts < ActiveRecord::Migration
  def change
    change_table :products do |t|
      t.references :user, index: true, foreign_key: true
    end
  end
end
