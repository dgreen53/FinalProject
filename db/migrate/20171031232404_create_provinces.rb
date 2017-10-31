class CreateProvinces < ActiveRecord::Migration[5.1]
  def change
    create_table :provinces do |t|
      t.string :name
      t.integer :pst
      t.integer :gst
      t.integer :hst
      t.string :short

      t.timestamps
    end
  end
end
