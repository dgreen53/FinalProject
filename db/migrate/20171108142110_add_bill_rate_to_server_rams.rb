class AddBillRateToServerRams < ActiveRecord::Migration[5.1]
  def change
    add_column :server_rams, :bill_rate, :decimal
  end
end
