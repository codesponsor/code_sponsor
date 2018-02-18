# == Schema Information
#
# Table name: sponsorships
#
#  id               :uuid             not null, primary key
#  property_id      :uuid
#  campaign_id      :uuid
#  token            :string           not null
#  bid_amount_cents :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class SponsorshipTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
