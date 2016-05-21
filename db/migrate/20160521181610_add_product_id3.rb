class AddProductId3 < ActiveRecord::Migration
  def change
    change_table(:reviews) do |t|
      t.remove :products_id
    end

    change_table(:reviews) do |t|
      t.references :product
    end
  end
end
