class CreateBlocks < ActiveRecord::Migration[5.1]
  def change
    create_table :blocks do |t|
      t.integer :x
      t.integer :y
      t.integer :width
      t.integer :height
      t.string :style
      t.string :status
      t.integer :level_id

      t.timestamps
    end
  end
end
