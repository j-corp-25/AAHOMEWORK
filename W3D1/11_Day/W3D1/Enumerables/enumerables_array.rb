require "byebug"

class Array
  def my_each(&prc)
    i = 0
    while i < self.length
      prc.call(self[i])
      i += 1
    end
    self
  end

  def my_select(&prc)
    arr = []
    i = 0
    while i < self.length
      arr << self[i] if prc.call(self[i])
      i += 1
    end
    arr
  end

  def my_reject(&prc)
    arr = []
    i = 0
    while i < self.length
      arr << self[i] if !prc.call(self[i])
      i += 1
    end
    arr
  end

  def my_any?(&prc)
    i = 0
    while i < self.length
      return true if prc.call(self[i])
      i += 1
    end
    false
  end

  def my_all?(&prc)
    i = 0
    while i < self.length
      return false if !prc.call(self[i])
      i += 1
    end
    true
  end

  def my_flatten
    i = 0
    new_array = []

    while i < self.length
      if !self[i].is_a?(Array)
        new_array << self[i]
      else
        new_array += self[i].my_flatten
      end
      i += 1
    end
    new_array
  end

  def my_zip(*arrays)
    result = []
    self.each_with_index do |ele, idx|
      result << [ele]
      arrays.each do |sub_array|
        result[idx] << sub_array[idx]
      end
    end
    result
  end
  def my_rotate(n=1)
    if n > 0
      n.times {
        self.push(self[0])
        self.shift
      }


    else
      n.times {
        self.unshift(self[-1])
        self.pop
      }
    end
  end
end

a = [ "a", "b", "c", "d" ]
p a.my_rotate         #=> ["b", "c", "d", "a"]
p a.my_rotate(2)      #=> ["c", "d", "a", "b"]
p a.my_rotate(-3)     #=> ["b", "c", "d", "a"]
p a.my_rotate(15)     #=> ["d", "a", "b", "c"]


# a = [ 4, 5, 6 ]
# b = [ 7, 8, 9 ]
# p [1, 2, 3].my_zip(a, b) # => [[1, 4, 7], [2, 5, 8], [3, 6, 9]]
# p a.my_zip([1,2], [8])   # => [[4, 1, 8], [5, 2, nil], [6, nil, nil]]
# p [1, 2].my_zip(a, b)    # => [[1, 4, 7], [2, 5, 8]]

# c = [10, 11, 12]
# d = [13, 14, 15]
# p [1, 2].my_zip(a, b, c, d)    # => [[1, 4, 7, 10, 13], [2, 5, 8, 11, 14]]

# p [1, 2, 3, [4, [5, 6]], [[[7]], 8]].my_flatten

# return_value = [1, 2, 3].my_each do |num|
#  puts num
# end.my_each do |num|
#  puts num
# end

# a = [1, 2, 3]
# p a.my_select { |num| num > 1 } # => [2, 3]
# p a.my_select { |num| num == 4 } # => []

# a = [1, 2, 3]
# p a.my_reject { |num| num > 1 } # => [1]
# p a.my_reject { |num| num == 4 } # => [1, 2, 3]

# a = [1, 2, 3]
# # p a.my_any? { |num| num > 1 } # => true
# # p a.my_any? { |num| num == 4 } # => false

# p a.my_all? { |num| num > 1 } # => false
# p a.my_all? { |num| num < 4 } # => true
