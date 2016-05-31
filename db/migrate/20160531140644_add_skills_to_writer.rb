class AddSkillsToWriter < ActiveRecord::Migration
  def change
    add_column :writers, :skills, :string
  end
end
