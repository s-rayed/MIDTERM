class UpdateUserIdSubscriptions < ActiveRecord::Migration
  def change
    remove_column :subscriptions, :users_id, :integer

    change_table :subscriptions do |t|
      t.references :user, foreign_key: true
    end
  end
end
