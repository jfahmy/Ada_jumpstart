def recur_factorial(num)
  if num == 0 || num == 1
    puts num
  else
    num * recur_factorial(num - 1)
  end
end

recur_factorial(6)
