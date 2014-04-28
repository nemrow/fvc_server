class DayMapper
  def initialize(day_index)
    @day_index = day_index
  end

  def day
    get_day(@day_index)
  end

  def self.todays_offset
    get_index
  end

  private
    DAYS = [
      "Saturday",
      "Sunday",
      "Monday",
      "Tuesday",
      "Wednesday",
      "Thursday",
      "Friday"
    ]

    def self.today
      Time.now.strftime("%A")
    end

    def self.get_index
      DAYS.index(today)
    end

    def get_day(day_index)
      DAYS[day_index]
    end
end