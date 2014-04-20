class ActiveSupport::TimeWithZone
  def formatted_time
    self.strftime('%I:%M %p')
  end

  def formatted_hours
    self.strftime('%H:%M')
  end
end