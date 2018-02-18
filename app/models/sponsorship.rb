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

class Sponsorship < ApplicationRecord
  # extends ...................................................................
  # includes ..................................................................

  # relationships .............................................................
  has_many :impressions
  has_many :clicks
  belongs_to :campaign
  belongs_to :property

  # validations ...............................................................
  validates :token, presence: true, uniqueness: true

  # callbacks .................................................................
  # scopes ....................................................................
  # additional config (i.e. accepts_nested_attribute_for etc...) ..............

  # class methods .............................................................
  class << self
  end

  # public instance methods ...................................................

  # protected instance methods ................................................
  protected

  # private instance methods ..................................................
  private
end 
