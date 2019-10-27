require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'
require './lib/participant'

class ActivityTest < Minitest::Test

  def setup
    @brunch = Activity.new("Brunch")
    @maria = Participant.new("Maria")
    @luther = Participant.new("Luther")
  end

  def test_it_exists
    assert_instance_of Activity, @brunch
  end

  def test_it_initializes_with_name_and_participants
    expected = {}
    assert_equal "Brunch", @brunch.name
    assert_equal expected, @brunch.participants
  end

  def test_it_can_add_participants
    skip

    expected_first = {}
    assert_equal expected_first, @brunch.participants
    @brunch.add_participant("Maria", 20)
    expected_next = {"Maria" => 20}
    assert_equal expected_next, @brunch.participants
    @brunch.add_participant("Luther", 40)
    expected_last = {"Maria" => 20, "Luther" => 40}
    assert_equal expected_last, @brunch.participants
  end

  def test_it_can_calculate_total_cost
    skip

    assert_equal 60, @brunch.total_cost
  end

end
