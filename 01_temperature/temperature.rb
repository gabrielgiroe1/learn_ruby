def ftoc(param)
  if param ===32
    0
    else
       5.0*(param-32)/9
  end
end

def ctof (param)
  if param===0
    32
    else 9.0*param/5.0+32
  end
end