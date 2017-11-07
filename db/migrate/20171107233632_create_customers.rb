class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.boolean :disabled
      t.boolean :admin
      t.references :address, foreign_key: true

      t.timestamps
    end
  end
end
