# == Schema Information
#
# Table name: campaigns
#
#  id                   :uuid             not null, primary key
#  user_id              :uuid
#  name                 :string           default(""), not null
#  daily_budget_cents   :integer          default(0), not null
#  monthly_budget_cents :integer          default(0), not null
#  total_budget_cents   :integer          default(0), not null
#  bid_amount_cents     :integer          default(0), not null
#  redirect_url         :text             default(""), not null
#  status               :integer          default(0), not null
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

require 'test_helper'

class CampaignTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
