# == Schema Information
#
# Table name: users
#
#  id                     :uuid             not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  first_name             :string
#  last_name              :string
#  address_1              :string
#  address_2              :string
#  city                   :string
#  region                 :string
#  postal_code            :string
#  country                :string
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  confirmation_token     :string
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  roles                  :string           default([]), not null, is an Array
#

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
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,
         :validatable, :confirmable
  tag_columns :roles

  # class methods .............................................................
  class << self
    def find_by_token(input_token)
      crypt = ActiveSupport::MessageEncryptor.new(Rails.application.secret_key_base.byteslice(0..31))
      token = crypt.decrypt_and_verify input_token
      user_id = token.gsub("user-id:", "")
      find_by id: user_id
    end
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

  def token
    crypt = ::ActiveSupport::MessageEncryptor.new(Rails.application.secret_key_base.byteslice(0..31))
    crypt.encrypt_and_sign("user-id:#{ id }")
  end

  # protected instance methods ................................................
  protected

  # private instance methods ..................................................
  private
end
