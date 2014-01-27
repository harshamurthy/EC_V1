class CreateRtes < ActiveRecord::Migration
  def change
    create_table :rtes do |t|
      t.integer :exercise_id
      t.integer :routine_id

      t.timestamps
    end
  end
end
