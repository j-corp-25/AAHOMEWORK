# def range (min, max)
#   newarr = []
#   (min...max).each do |i|
#     newarr << i 
#   end
#   newarr
# end 

def range (min, max)
  return [] if max <= min
  [min] + range(min + 1, max) 
end 

p range(1,5)

def exponentation(b, n)
    return 1 if n == 0
    return b if n == 1
    b * exponentation(b, n - 1)
end 

def exp(b,n)
    return 1 if n == 0
    return b if n == 1
    if b.even?
      exp(b, n / 2) * exp(b, n / 2)
    else
      b * (exp(b, (n - 1) / 2) * (exp(b, (n - 1) / 2)))
    end 
end 

p exp(0,0)

# array = [1,2,3,4,[3],5]
# array1 = array.dup
# p array1
# p array.object_id
# p array1.object_id
require "byebug"
class Array



  def deep_dup
    new_array = []
    self.each do |ele|

      if !ele.is_a?(Array)
         new_array << ele
      else
        new_array << ele.deep_dup 
      end
   
      
    end
    return new_array 


  end







end


array = [1,2,3,[4,5,6]]
array2 = array.deep_dup
 array2
 array2 << 8

p array
p array2


def fib(n)  
  return 1 if n == 1
  return 1 if n == 2

  fib(n - 1) + fib(n - 2)

end

p fib(7)
require "byebug"
def bsearch(array,target)

  middle = (array.length / 2)
  left_side = array[0...middle] 
  right_side = array[middle+1..-1] 
  
  return nil if array.length <= 1 && array[0] != target
  return middle if array[middle] == target 
  
  if target > array[middle]
    if bsearch(right_side,target) == nil
      return nil
    end          
    bsearch(right_side,target) + middle + 1    
  else
    bsearch(left_side,target)
  end

end




  
p bsearch([1, 2, 3], 1) # => 0
p bsearch([2, 3, 4, 5], 3) # => 1
p bsearch([2, 4, 6, 8, 10], 6) # => 2
p bsearch([1, 3, 4, 5, 9], 5) # => 3
p bsearch([1, 2, 3, 4, 5, 6], 6) # => 5
p bsearch([1, 2, 3, 4, 5, 6], 0) # => nil
p bsearch([1, 2, 3, 4, 5, 7], 6) # => nil


def merge_sort(array)
  newarr = []
  return array[0] if array.length <= 1

  middle = (array.length / 2)
  left_side = array[0..middle] 
  right_side = array[middle+1..-1]

  newarr += merge_sort(left_side) 
  return newarr

end


p merge_sort([1,2,36,4,3])