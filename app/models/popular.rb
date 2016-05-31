# == Schema Information
#
# Table name: populars
#
#  id         :integer          not null, primary key
#  name       :string
#  percentage :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Popular < ActiveRecord::Base
end
