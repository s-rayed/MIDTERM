class AddReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :review
      t.references :user, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true
      t.timestamps
    end
  end
end
