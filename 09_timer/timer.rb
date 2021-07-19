class Timer
  attr_writer :time
  attr_writer :seconds

  def seconds(seconds = 0)
    @seconds = seconds
  end

  def padded(x)
    temp = x
    c = 1
    while temp > 0
      temp = temp.div(10)
      c += 1
    end
    if c > 0
      c -= 1
    end
    if (c % 2 == 0) && (c > 0)
      x.to_s
    else
      x = "0" + x.to_s
    end
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
    padded(h) + ":" + padded(m) + ":" + padded(s)
  end
end