class RenameColumnServerCpusCoreCountCores < ActiveRecord::Migration[5.1]
  def change
    rename_column :server_cpus, :core_count, :cores
  end
end
