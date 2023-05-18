def iter_sum(n)
  sum = 0
  (1..n).each {|i| sum += i}
 return sum

end
p iter_sum(3)
p iter_sum(7)
p iter_sum(10)

def rec_sum(n)
  return n if n == 0
  return n if n == 1
  return n + iter_sum(n - 1)

end
p rec_sum(3)
p rec_sum(7)
p rec_sum(10)
p rec_sum(10000)

rec_sum(3)
3 + rec_sum(2)
3 + 2 + rec_sum(1)
3 + 2 + 1 + rec_sum(0)
3 + 2 + 1 + 0


def iter_reverse(str)
  new_str = ""
  str.each_char do |char|
    new_str = char + new_str
  end
  return new_str
end



def rec_reverse(str)
  return str if str.length <= 1
  rec_reverse(str[1..-1]) + str[0]
end

p rec_reverse("cat")

def fibs(n)
  return 0 if n == 1
  return 1 if n == 2

  fibs(n - 1) + fibs(n - 2)



end

p fibs(1)
p fibs(2)
p fibs(3)
p fibs(4)
p fibs(5)
p fibs(6)





$count = 0
def all_fibs(n)
  $count += 1

  return [] if n == 0
  return [n] if n == 1
  return [0,1] if n == 2

  #fib(0) = []    <<  [0,1][-1]  + [0,1][-2]
  all_fibs(n - 1) << all_fibs(n - 1)[-1] + all_fibs(n - 1)[-2]


end

p all_fibs(0)
p all_fibs(1)
p all_fibs(2)
p all_fibs(3)
p all_fibs(4)
p all_fibs(5)


$count = 0
def new_all_fibs(n)

  return [] if n == 0
  return [n] if n == 1
  return [0,1] if n == 2

  prev_arr = new_all_fibs(n - 1)  #[0, 1]

  prev_arr << prev_arr[-1] + prev_arr[-1] + prev_arr[-2]


end

p new_all_fibs(0)
p new_all_fibs(1)
p new_all_fibs(2)
p new_all_fibs(3)
p new_all_fibs(4)
p new_all_fibs(5)
p new_all_fibs(20)


def pascal_triangle(n)
  return [1] if n == 0
  return [1, 1] if n == 1
  last_row = pascal_row(n - 1)
  next_row = [1]

  (0...last_row.length - 1).each do |i|
    next_row << last_row[i] + last_row[i + 1]
  end


  next_row << 1

end
