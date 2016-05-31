class CreateMostWanteds < ActiveRecord::Migration
  def change
    create_table :most_wanteds do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
