require 'test_helper'

class AuthorTest < ActiveSupport::TestCase

  test "should be valid" do
    rand = authors(:rand)
    assert rand.valid?
  end

  test "year born should be less than or equal to 2015" do
    rand = authors(:rand)
    rand.year_born = 2020
    assert_not rand.valid?
  end

end
