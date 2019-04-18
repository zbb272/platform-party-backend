class AddBackgroundToLevels < ActiveRecord::Migration[5.1]
  def change
    add_column :levels, :background, :string
  end
end
