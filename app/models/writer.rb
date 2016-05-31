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
    "1": "Kindergarten",
    "2": "First Grade",
    "3": "Second Grade",
    "4": "Third Grade",
    "5": "Fourth Grade",
    "6": "Fifth Grade",
    "7": "Sixth Grade",
    "8": "Seventh Grade",
    "9": "Eighth Grade",
    "10": "Ninth Grade",
    "11": "Tenth Grade",
    "12": "Eleventh Grade",
    "13": "Twelfth Grade",
    "14": "College"
  }

  def calculate_grade_points
    4.71*(average_characters_count_per_recipe/average_words_count_per_recipe) + 0.5*(average_words_count_per_recipe/average_sentences_count_per_recipe) - 21.43
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
end
