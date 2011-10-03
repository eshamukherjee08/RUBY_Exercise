h = Hash.new
str = gets.chomp
word = str.split(//)
word.each{|b|
  if h.has_key?(b)
    h[b]=h[b]+1
  else
    h[b]=1
  end
}
h.sort{|a,b| a[1]<=>b[1]}.each{|elem|
  puts "\"#{elem[0]}\"has #{elem[1]}occurances"
}