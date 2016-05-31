# == Schema Information
#
# Table name: most_wanteds
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  percentage :float
#

class MostWanted < ActiveRecord::Base
end
