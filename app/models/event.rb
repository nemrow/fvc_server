class Event < ActiveRecord::Base
  attr_accessible :min_time, :duration, :day_index, :description, :title, :all_fvc, :extra_cost, :reg_required

  def self.sorted_events
    days_events_hash = {}
    Event.all.each do |event|
      day = DayMapper.new(event.day_index).day
      days_events_hash.add_or_create_and_add(day, event)
    end
    Event.build_weeks_event_hash(days_events_hash)
  end

  def self.build_weeks_event_hash(days_events_hash)
    Date.full_week_array.map do |day| 
      {
        :day => day,
        :events => Event.sort_days_event(days_events_hash[day])
      }
    end
  end 

  def self.sort_days_event(events_array)
    return [] if events_array.nil?
    events_array.sort_by{|event| event.min_time}
  end
end
