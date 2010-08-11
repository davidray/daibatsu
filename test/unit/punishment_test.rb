require 'test_helper'

class PunishmentTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Punishment.new.valid?
  end
end
