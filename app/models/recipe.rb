# == Schema Information
#
# Table name: recipes
#
#  id         :integer          not null, primary key
#  name       :string
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  writer_id  :integer
#

class Recipe < ActiveRecord::Base
  belongs_to :writer

  def stripped_content
    ActionController::Base.helpers.strip_tags(content)
  end

  def words_count
    stripped_content.split.size
  end

  def characters_count
    stripped_content.gsub(" ","").size
  end

  def sentences_count
    stripped_content.scan(/[^\.!?;]+[\.!?;]/).map(&:strip).count
  end
end
