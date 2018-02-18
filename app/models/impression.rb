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

class Impression < ApplicationRecord
  # extends ...................................................................
  # includes ..................................................................

  # relationships .............................................................
  belongs_to :developer, class_name: "User"
  belongs_to :property
  belongs_to :sponsor, class_name: "User"
  belongs_to :sponsorship

  # validations ...............................................................
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
