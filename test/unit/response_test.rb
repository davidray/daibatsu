require 'test_helper'

class ResponseTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Response.new.valid?
  end
end
