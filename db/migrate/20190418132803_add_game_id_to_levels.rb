class AddGameIdToLevels < ActiveRecord::Migration[5.1]
  def change
    add_column :levels, :game_id, :integer
  end
end
