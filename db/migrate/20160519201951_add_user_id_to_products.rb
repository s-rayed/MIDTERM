class AddUserIdToProducts < ActiveRecord::Migration
  def change
    change_table :products do |t|
      t.references :user
    end
  end
end
