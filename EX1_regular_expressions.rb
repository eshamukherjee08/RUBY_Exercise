def FindCount(str,find)
  arr = Array.new
  reg = Regexp.new(find,"i")
  reg1 = Regexp.new(find)
  arr = str.scan(reg)
  len = arr.size
  match = reg.match(str)
  if match
      nstr= "#{match.pre_match}(#{match[0]})#{match.post_match}"
  else
    print "no match"
  end
  new_str = nstr.gsub!(reg1 , "\(#{find}\)")
  puts "The highlighted string is : #{new_str}\n"
  print "Total Occurences found: #{len}"
end
FindCount("Can you can a can as a canner can can a can?","can")