class AddUsers < ActiveRecord::Migration
  
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :address
      t.string :city
      t.string :postal_code
      t.string :province
      t.string :paypal_email
      t.string :password
      t.references :subscription, foreign_key: true
    end
  end

end
