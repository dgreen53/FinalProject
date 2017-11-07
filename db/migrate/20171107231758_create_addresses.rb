class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :street_address
      t.string :city
      t.string :postal
      t.string :phone
      t.references :province, foreign_key: true

      t.timestamps
    end
  end
end
