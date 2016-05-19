class RemoveTypeSubs < ActiveRecord::Migration
  def change
    change_table :subscriptions do |t|
      t.remove :type
    end
  end
end
