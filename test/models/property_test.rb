# == Schema Information
#
# Table name: properties
#
#  id         :uuid             not null, primary key
#  user_id    :uuid
#  name       :string           default(""), not null
#  url        :string           default(""), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require "test_helper"

class PropertyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
