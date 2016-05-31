class AddPercentagesToData < ActiveRecord::Migration
  def change
    add_column :trendies, :percentage, :float
    add_column :most_wanteds, :percentage, :float
  end
end
