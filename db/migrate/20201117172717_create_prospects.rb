class CreateProspects < ActiveRecord::Migration[6.0]
  def change
    create_table :prospects do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :status
      t.integer :manager_id
      t.integer :salesperson_id
      t.string :created_by

      t.timestamps
    end
  end
end
