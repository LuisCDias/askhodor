class AddPhotoToWriter < ActiveRecord::Migration
  def change
    add_column :writers, :photo, :string
  end
end
