class AddUnlockedToLevels < ActiveRecord::Migration[5.1]
  def change
    add_column :levels, :unlocked, :boolean
  end
end
