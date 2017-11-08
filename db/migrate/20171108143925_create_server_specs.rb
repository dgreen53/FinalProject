class CreateServerSpecs < ActiveRecord::Migration[5.1]
  def change
    create_table :server_specs do |t|
      t.string :name
      t.string :description
      t.references :server_cpu
      t.references :server_ram
      t.decimal :bill_rate
      t.string :image

      t.timestamps
    end
  end
end
