class String
  define_method(:clock_angle) do
    time = self.split(':')
    hour = time[0].to_f()
    minute = time[1].to_f()
    hour_angle = (hour * 30) + (minute * 0.5)
    minute_angle = minute * 6
    difference = hour_angle - minute_angle

    if difference > 180
      difference = 360 - difference
    end

    difference.abs()
  end
end
