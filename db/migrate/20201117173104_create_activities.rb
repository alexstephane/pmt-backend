class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.integer :prospect_id
      
      t.string :created_by
      t.string :prospect_name 
      t.string :status
      t.string :description

      t.timestamps
    end
  end
end
