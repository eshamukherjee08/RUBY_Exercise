def fibonacci(n)
  a,b=0,1
  while a<=n
    yield a
    a,b=b,a+b
  end
end
fibonacci(5) {|a| puts a}
