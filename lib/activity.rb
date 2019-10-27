class Activity
  attr_reader :name, :participants

  def initialize(name)
    @name = name
    @participants = {}
  end

  def add_participant(participant_name, bill)
    @participants.merge! ({
      participant_name => bill
    })
  end

  def total_cost
    @participants.values.sum
  end

  def split
    total_cost/@participants.length
  end

  def owed

  end
end
