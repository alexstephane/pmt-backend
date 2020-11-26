class RenameSalespersonIdToSalesrepId < ActiveRecord::Migration[6.0]
  def change
    rename_column :prospects, :salesperson_id, :salesrep_id
    
    
  end
end
