# == Schema Information
#
# Table name: writers
#
#  id           :integer          not null, primary key
#  name         :string
#  grade_points :integer
#  grande_label :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Writer < ActiveRecord::Base
  has_many :recipes, dependent: :destroy

  # https://en.wikipedia.org/wiki/Automated_readability_index
  GRADES = {
    grade_1: "Kindergarten",
    grade_2: "1st",
    grade_3: "2nd",
    grade_4: "3rd",
    grade_5: "4th",
    grade_6: "5th",
    grade_7: "6th",
    grade_8: "7th",
    grade_9: "8th",
    grade_10: "9th",
    grade_11: "10th",
    grade_12: "11th",
    grade_13: "12th",
    grade_14: "College"
  }

  def grade
    return grade_points if grade_points
    result = 4.71*(average_characters_count_per_recipe/average_words_count_per_recipe) + 0.5*(average_words_count_per_recipe/average_sentences_count_per_recipe) - 21.43
    result <= 11 ? (result + 3).to_i : result.to_i
    key = "grade_#{result.to_i}".to_sym
    update(grade_points: result,grande_label: Writer::GRADES[key])
  end

  def average_characters_count_per_recipe
    recipes.map(&:characters_count).reduce(:+)/recipes.count
  end

  def average_words_count_per_recipe
    recipes.map(&:words_count).reduce(:+)/recipes.count
  end

  def average_sentences_count_per_recipe
    recipes.map(&:sentences_count).reduce(:+)/recipes.count
  end

  def skills_list
    skills.downcase.split(',')
  end
end
