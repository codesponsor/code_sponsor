require 'test_helper'

class Resolvers::CreatePropertyTest < ActiveSupport::TestCase
  def perform(args = {})
    Resolvers::CreateProperty.new.call(nil, args, {})
  end

  test 'creating new property' do
    property = perform(
      name: 'Example',
      url: 'http://example.com'
    )

    assert property.persisted?
    assert_equal property.name, 'Example'
    assert_equal property.url, 'http://example.com'
  end
end