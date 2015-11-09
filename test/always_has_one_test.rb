require 'test_helper'

class AlwaysHasOneTest < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, AlwaysHasOne
  end
end
