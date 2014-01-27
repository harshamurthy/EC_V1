class CreatePerformances < ActiveRecord::Migration
  def change
    create_table :performances do |t|
      t.integer :exercise_id
      t.string :name
      t.integer :value

      t.timestamps
    end
  end
end
