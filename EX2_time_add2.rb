def TimeAdd(*arg)
  reg = /^\d\d:\d\d:\d\d$/
  reg1 = /^\d\d$/
  h,m,s = 0,0,0
  for i in 0...arg.size do
    t1 = arg[i]
    if(reg.match(t1))
      time1 = t1.split(":") 
      h = h+time1[0].to_i
      m = m+time1[1].to_i
      s = s+time1[2].to_i
    else
      print "sorry wrong format entered!use (hh:mm:ss)\n"
    end
  end
  total_sec = (h*3600)+(m*60)+s
  total = total_sec/3600
  if(total > 23)
    day = total/24
    print "#{day} day & "
    total_hours = total-(day*24)
  else
    total_hours = total
  end
  t1 = total_sec-(total*3600)
  total_min = t1/60
  total_fsec = t1-(total_min*60)
  total_hours = total_hours.to_s
  total_min = total_min.to_s
  total_fsec = total_fsec.to_s
  if(reg1.match(total_hours))
    print "#{total_hours}:"
  else
    total_hours = "0#{total_hours}"
    print "#{total_hours}:"
  end
  if(reg1.match(total_min))
    print "#{total_min}:"
  else
    total_min = "0#{total_min}"
    print "#{total_min}:"
  end
  if(reg1.match(total_fsec))
    print "#{total_fsec}\n"
  else
    total_fsec = "0#{total_fsec}"
    print "#{total_fsec}\n"
  end
end
TimeAdd("00:45:34","00:15:58","03:10:00","22:00:00") 