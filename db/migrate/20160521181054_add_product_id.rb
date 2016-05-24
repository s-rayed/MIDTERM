class AddProductId < ActiveRecord::Migration
  def change
    change_table(:reviews) do |t|
      t.remove :song_id
    end
  end
end
