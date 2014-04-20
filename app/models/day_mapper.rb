class DayMapper
  def initialize(day_index)
    @day_index = day_index
  end

  def day
    mapper(@day_index)
  end

  private
    def mapper(day_index)
      case day_index
      when 0 then "Saturday"
      when 1 then "Sunday"
      when 2 then "Monday"
      when 3 then "Tuesday"
      when 4 then "Wednesday"
      when 5 then "Thursday"
      when 6 then "Friday"
      end
    end
end