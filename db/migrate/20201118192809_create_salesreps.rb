class CreateSalesreps < ActiveRecord::Migration[6.0]
  def change
    create_table :salesreps do |t|
      t.string :first_name
      t.string :last_name
      t.string :title
      t.string :email
      t.string :password_digest
      t.string "username"
      t.string :photo
      t.integer :manager_id

      t.timestamps
    end
  end
end
