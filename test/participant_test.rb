require 'minitest/autorun'
require 'minitest/pride'
require './lib/participant'

class ParticipantTest < Minitest::Test

  def setup
    @participant = Participant.new("Maria")
  end

  def test_it_exists
    assert_instance_of Participant, @participant
  end
end
