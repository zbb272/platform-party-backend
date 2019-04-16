class CreateScores < ActiveRecord::Migration[5.1]
  def change
    create_table :scores do |t|
      t.integer :level_id
      t.integer :value

      t.timestamps
    end
  end
end
