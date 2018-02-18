class User < ApplicationRecord
  # extends ...................................................................

  # includes ..................................................................
  include TagColumns

  # relationships .............................................................
  has_many :campaigns
  has_many :properties
  has_many :developer_impressions, class_name: "Impression", foreign_key: "developer_id"
  has_many :sponsor_impressions, class_name: "Impression", foreign_key: "sponsor_id"
  has_many :developer_clicks, class_name: "Click", foreign_key: "developer_id"
  has_many :sponsor_clicks, class_name: "Click", foreign_key: "sponsor_id"

  # validations ...............................................................
  validates :email, presence: true, uniqueness: true

  # callbacks .................................................................
  # scopes ....................................................................
  # additional config (i.e. accepts_nested_attribute_for etc...) ..............
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable,
         :validatable, :confirmable
  tag_columns :roles

  # class methods .............................................................
  class << self
  end

  # public instance methods ...................................................

  def admin?
    has_role?(:admin)
  end

  def to_s
    if [first_name, last_name].any?(&:present?)
      [first_name, last_name].join(" ").strip
    else
      email
    end
  end

  # protected instance methods ................................................
  protected

  # private instance methods ..................................................
  private
end
