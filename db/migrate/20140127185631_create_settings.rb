class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.integer :exercise_id
      t.integer :client_id
      t.string :name
      t.integer :value

      t.timestamps
    end
  end
end
