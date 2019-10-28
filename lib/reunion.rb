class Reunion
  attr_reader :name, :activities

  def initialize(name)
    @name = name
    @activities = []
  end

  def add_activity(activity)
    @activities << activity
  end

  def activity_cost(activity)
    activity.total_cost
  end

  def total_cost
    @activities.flat_map do |activity|
      activity_cost(activity)
    end.sum
  end

  def activity_participants(activity)
    activity.participants
  end

  def all_participants
    @activities.flat_map do |activity|
      activity_participants(activity)
    end
  end

  def breakout
    # code
  end

  def summary
    # code
  end
end
