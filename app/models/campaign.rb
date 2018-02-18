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

class Campaign < ApplicationRecord
  # extends ...................................................................
  # includes ..................................................................

  # relationships .............................................................
  belongs_to :user

  # validations ...............................................................
  validates :bid_amount_cents, presence: true
  validates :daily_budget_cents, presence: true
  validates :monthly_budget_cents, presence: true
  validates :name, presence: true
  validates :redirect_url, presence: true
  validates :status, presence: true
  validates :total_budget_cents, presence: true

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
