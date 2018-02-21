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

class Property < ApplicationRecord
  # extends ...................................................................
  # includes ..................................................................

  # relationships .............................................................
  belongs_to :user
  has_many :impressions
  has_many :clicks

  # validations ...............................................................
  validates :name, presence: true
  validates :url, presence: true, uniqueness: true

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
