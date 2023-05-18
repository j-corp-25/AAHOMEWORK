# Recursion

------------------

A function that calls itself.


+ We need a base case where it cant get any smaller.
+ Can we solve this problem for a smaller problem to solve a bigger problem


```ruby
n = 10
def factorial(n)
	return 1 if n == 1. #base case
	n * factorial(n - 1) #inductive step
end

p factorial(10)
```

## Recursion vs Iteration
## Anything you can do recursively can be done using iteration methods the problem is that some problems are very difficult to do via iteration which is why we use recursion
##  Using recursion on Iterative problems
# Up_case

```ruby
def upcase(string)
	return string.upcase if string.length <= 1
	puts string
	p string[0].upcase + upcase(string[1..-1])
end
p upcase("Hello World")
```

# Reverse




```ruby
def reverse(str)
	return str if str.length <= 1 #base case
	str[-1] + reverse(str[0..-1]) #inductive
end

```


# Quick Sort

[1,2,3,7,6,5,4] -> [1,2,3,4,5,6,]

```ruby


arr = [1,4,5,7,9,5,3,4,6,2]
def quick_sort(arr)
	return arr if arr.length <=1
	pivot_arr = [arr.first]
	puts pivot_arr
	puts left_side = arr[1..-1].select { |el| el < arr.first}
	puts right_side = arr[1..-1].select { |el| el >= arr.first}
	quick_sort(left_side) + pivot_arr + quick_sort(right_side)
end

p quick_sort(arr)
```

+ For quick sort we pick a number and check if the elements to the left are less than the current number and the ones to the right are bigger.

# What is the stack?

For tonight's exercises, you are going to write several recursive functions. Here's how you should approach each problem:

1.  Read the problem statement to make sure you fully understand the problem.
2.  Identify the base case(s).
3.  Determine the inductive step.
4.  Write the function.
5.  Run the provided test cases to verify you have a working solution.

As you learn recursion, it is important that you break down each problem into these steps. Doing so will help you devise solutions and avoid stack overflow errors.

If you encounter strange bugs or errors, use `byebug`!

## Exercise 1 - `sum_to`

Write a function `sum_to(n)` that uses recursion to calculate the sum from 1 to n (inclusive of n).

```ruby

def sum_to(n)
	return 1 if n == 1 
	return nil if n < 1
	n + sum_to(n - 1)
end
  # Test Cases
  p sum_to(5)  # => returns 15
  p sum_to(1)  # => returns 1
  p sum_to(9)  # => returns 45
  p sum_to(-8)  # => returns nil
```

## Exercise 2 - `add_numbers`

Write a function `add_numbers(nums_array)` that takes in an array of Integers and returns the sum of those numbers. Write this method recursively.

```ruby
def add_numbers(nums_array)
	return nums_array[0] if nums_array.length == 1 
	return nil if nums_array.empty?
	nums_array[-1] + add_numbers(nums_array[0...-1])
end
  # Test Cases
  p add_numbers([1,2,3,4]) # => returns 10
  p add_numbers([3]) # => returns 3
  p add_numbers([-80,34,7]) # => returns -39
  p add_numbers([]) # => returns nil
```

## Exercise 3 - Gamma Function

Let's write a method that will solve Gamma Function recursively. The Gamma Function is defined as `Γ(n) = (n-1)!`.

```ruby
def gamma_fnc(n)
	return nil if n == 0
	return n if n == 1
	(n - 1) * gamma_fnc(n - 1)
end
  # Test Cases
  p gamma_fnc(0)  # => returns nil
  p gamma_fnc(1)  # => returns 1
  p gamma_fnc(4)  # => returns 6
  p gamma_fnc(8)  # => returns 5040
```

## Exercise 4 - Ice Cream Shop

Write a function `ice_cream_shop(flavors, favorite)` that takes in an array of ice cream flavors available at the ice cream shop and the user's favorite ice cream flavor. Recursively find out whether or not the shop offers their favorite flavor.

```
  # Test Cases
  ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  # => returns false
  ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  # => returns true
  ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  # => returns false
  ice_cream_shop(['moose tracks'], 'moose tracks')  # => returns true
  ice_cream_shop([], 'honey lavender')  # => returns false
```

## Exercise 5 - Reverse

Write a function `reverse(string)` that takes in a string and returns it reversed.

```
  # Test Cases
  reverse("house") # => "esuoh"
  reverse("dog") # => "god"
  reverse("atom") # => "mota"
  reverse("q") # => "q"
  reverse("id") # => "di"
  reverse("") # => ""
```

Did you find this lesson helpful?