class CreateServerRams < ActiveRecord::Migration[5.1]
  def change
    create_table :server_rams do |t|
      t.integer :size

      t.timestamps
    end
  end
end
