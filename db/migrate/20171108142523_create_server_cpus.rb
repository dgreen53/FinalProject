class CreateServerCpus < ActiveRecord::Migration[5.1]
  def change
    create_table :server_cpus do |t|
      t.integer :core_count
      t.decimal :bill_rate

      t.timestamps
    end
  end
end
