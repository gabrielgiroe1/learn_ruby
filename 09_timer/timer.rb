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
    h = @seconds.div(3600)
    if h > 0
      @seconds -= h * 3600
    end
    m = @seconds.div(60)
    if m > 0
      @seconds -= m * 60
    end
    s = @seconds
    "#{ padded(h)}:#{padded(m)}:#{padded(s) }"
  end
end