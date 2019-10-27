require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'

class ActivityTest < Minitest::Test

  def setup
    @activity = Activity.new("Brunch")
  end

  def test_it_exists
    assert_instance_of Activity, @activity
  end

  def test_it_initializes_with_name_and_participants
    expected = {}
    assert_equal "Brunch", @activity.name
    assert_equal expected, @activity.participants
  end

end
