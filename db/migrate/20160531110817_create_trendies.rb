class CreateTrendies < ActiveRecord::Migration
  def change
    create_table :trendies do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
