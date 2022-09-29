class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.string :email
      t.string :phone
      t.string :address
      t.boolean :shop_owner

      t.timestamps
    end
  end
end
