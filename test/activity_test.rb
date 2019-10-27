require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'

class ActivityTest < Minitest::Test

  def setup
    @brunch = Activity.new("Brunch")
  end

  def test_it_exists
    assert_instance_of Activity, @brunch
  end

  def test_it_initializes_with_name_and_participants
    assert_equal "Brunch", @brunch.name
    assert_equal ({}), @brunch.participants
  end

  def test_it_can_add_participants
    assert_equal ({}), @brunch.participants
    @brunch.add_participant("Maria", 20)
    assert_equal ({"Maria" => 20}), @brunch.participants
    @brunch.add_participant("Luther", 40)
    assert_equal ({"Maria" => 20, "Luther" => 40}), @brunch.participants
  end

  def test_it_can_calculate_total_cost
    @brunch.add_participant("Maria", 20)
    @brunch.add_participant("Luther", 40)
    assert_equal 60, @brunch.total_cost
  end

  def test_it_can_split_the_cost
    @brunch.add_participant("Maria", 20)
    @brunch.add_participant("Luther", 40)
    assert_equal 30, @brunch.split
  end

  def test_it_can_tell_amount_owed
    # skip
    @brunch.add_participant("Maria", 20)
    @brunch.add_participant("Luther", 40)
    assert_equal ({"Maria" => 10, "Luther" => -10}), @brunch.owed
  end
end
