class Event < ActiveRecord::Base
  attr_accessible :min_time, :duration, :day_index, :description, :title
end
