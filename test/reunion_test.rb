require 'minitest/autorun'
require 'minitest/pride'
require './lib/reunion'
require './lib/activity'

class ReunionTest < Minitest::Test

  def setup
    @reunion = Reunion.new("1406 BE")
    @activity_1 = Activity.new("Brunch")
    @activity_2 = Activity.new("Drinks")
  end

  def test_it_exists
    assert_instance_of Reunion, @reunion
  end

  def test_it_initializes_with_name_and_activities
    assert_equal "1406 BE", @reunion.name
    assert_equal [], @reunion.activities
  end

  def test_it_can_add_activities
    @reunion.add_activity(@activity_1)
    assert_equal [@activity_1], @reunion.activities
  end

  def test_it_can_calculate_total_cost
    @activity_1.add_participant("Maria", 20)
    @activity_1.add_participant("Luther", 40)
    @reunion.add_activity(@activity_1)
    assert_equal 60, @reunion.total_cost
    # skip
    @activity_2.add_participant("Maria", 60)
    @activity_2.add_participant("Luther", 60)
    @activity_2.add_participant("Louis", 0)
    @reunion.add_activity(@activity_2)
    assert_equal 180, @reunion.total_cost
  end

  def test_it_can_breakout_cost_amongst_participants
    assert_equal ({"Maria" => -10, "Luther" => -30, "Louis" => 40}), @reunion.breakout
  end

  def test_it_can_provide_reunion_summary
    assert_equal "Maria: -10\nLuther: -30\nLouis: 40", @reunion.summary
  end

# puts reunion.summary
end
