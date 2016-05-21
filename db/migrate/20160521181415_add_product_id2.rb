class AddProductId2 < ActiveRecord::Migration
  def change
    change_table(:reviews) do |t|
      t.references :products
    end
  end
end
