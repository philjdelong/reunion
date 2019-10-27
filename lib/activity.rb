class Activity
  attr_reader :name, :participants

  def initialize(name)
    @name = name
    @participants = {

    }
  end

  def add_participant(participant_name, cost)
    @participants.merge! ({
      participant_name => cost
    })
  end

  def total_cost
    @participants.values.sum
  end
end
