require 'test_helper'

class AlwaysHasOneTest < ActiveSupport::TestCase

  test "module" do
    assert_kind_of Module, AlwaysHasOne
    assert_kind_of Module, AlwaysHasOne::ClassMethods
  end

  test "extends ActiveRecord::Base" do
    assert_respond_to ActiveRecord::Base, :always_has_one
  end

  test "always_has_one" do
    supplier = Supplier.new
    assert_nil supplier.actual_account
    refute_nil supplier.account
    refute_nil supplier.actual_account
  end

end
