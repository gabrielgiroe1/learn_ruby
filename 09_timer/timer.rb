class Timer
  attr_writer :time
  attr_writer :seconds

  def seconds(seconds = 0)
    @seconds = seconds
  end

  def padded(x)
    x > 9 ? x.to_s : "0" + x.to_s
  end

  def time_string
    Time.at(@seconds).utc.strftime("%H:%M:%S")
  end
end