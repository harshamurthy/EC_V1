class CreateRoutines < ActiveRecord::Migration
  def change
    create_table :routines do |t|
      t.string :description

      t.timestamps
    end
  end
end
