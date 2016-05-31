class AddWriterIdToRecipe < ActiveRecord::Migration
  def change
    add_reference :recipes, :writer, index: true, foreign_key: true
  end
end
