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

require 'test_helper'

class WriterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
