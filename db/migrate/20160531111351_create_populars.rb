class CreatePopulars < ActiveRecord::Migration
  def change
    create_table :populars do |t|
      t.string :name
      t.float :percentage

      t.timestamps null: false
    end
  end
end
