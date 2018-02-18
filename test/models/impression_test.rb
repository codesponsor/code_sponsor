# == Schema Information
#
# Table name: impressions
#
#  id             :uuid             not null, primary key
#  sponsorship_id :uuid
#  property_id    :uuid
#  developer_id   :uuid             not null
#  sponsor_id     :uuid             not null
#  ip             :string
#  user_agent     :text
#  browser        :string
#  os             :string
#  device_type    :string
#  screen_height  :integer
#  screen_width   :integer
#  country        :string
#  region         :string
#  city           :string
#  postal_code    :string
#  latitude       :decimal(, )
#  longitude      :decimal(, )
#  utm_source     :string
#  utm_medium     :string
#  utm_term       :string
#  utm_content    :string
#  utm_campaign   :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class ImpressionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
