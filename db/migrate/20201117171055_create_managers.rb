class CreateManagers < ActiveRecord::Migration[6.0]
  def change
    create_table :managers do |t|
      t.string :first_name
      t.string :last_name
      t.string :title
      t.string :email
      t.string "username"
      t.string :password_digest
      t.string :photo

      t.timestamps
    end
  end
end
