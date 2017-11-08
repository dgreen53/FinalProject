class AddImageToServerOs < ActiveRecord::Migration[5.1]
  def change
    add_column :server_os, :image, :string
  end
end
