def fibs(n)
  array = []
  for i in 0..n - 1
    array << case i
             when 0
               0
             when 1
               1
             else
               (array[i - 1] + array[i - 2])
             end
    end
  array
end

p fibs(8)

def fibs_rec(n)
  # These are the base cases, as they are assigned, not calculated
  return [] if n == 0
  return [0] if n == 1
  return [0, 1] if n == 2

  # Calculating the value of a given entry was easy. However, I struggled to get the results into an array properly.
  # Credit to Ganthology for this one.

  array = fibs_rec(n - 1)
  array << (array[-2] + array[-1])
end

p fibs_rec(8)

def merge_sort(array)
  # This is the base case.
  return array if array.length <= 1

  midpoint = array.length / 2
  left_half = merge_sort(array[0, midpoint])
  right_half = merge_sort(array[midpoint, array.length])

  # I was alright up to this point, but I didn't think of the #empty? approach on my own. Credit to Ganthology again.

  sorted = []
  until left_half.empty? || right_half.empty?
    sorted << (left_half.first <= right_half.first ? left_half.shift : right_half.shift)
  end
  sorted + left_half + right_half
end

a = [3, 2, 1, 13, 8, 5, 0, 1]
b = [105, 79, 100, 110]

p merge_sort(a)
p merge_sort(b)
