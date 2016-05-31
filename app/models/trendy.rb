# == Schema Information
#
# Table name: trendies
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  percentage :float
#

class Trendy < ActiveRecord::Base
end
