class Reunion
  attr_reader :name, :activities

  def initialize(name)
    @name = name
    @activities = []
  end

  def add_activity(activity)
    @activities << activity
  end

  def total_cost
    @activities.flat_map do |activity|
      activity.participants.values
    end.sum
  end

  def breakout
    # code
  end

  def summary
    # code
  end
end
