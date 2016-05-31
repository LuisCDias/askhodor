class CreateWriters < ActiveRecord::Migration
  def change
    create_table :writers do |t|
      t.string :name
      t.integer :grade_points
      t.string :grande_label

      t.timestamps null: false
    end
  end
end
