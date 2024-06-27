def fibs(n)
  array = []
  for i in 0..n-1
    case i
      when 0
        array << 0
      when 1
        array << 1
      else
        array << array[i-1] + array[i-2]
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

  array = fibs_rec(n-1)
  array << array[-2] + array[-1]
end

p fibs_rec(8)

# def merge_sort(full_array)
  # if full_array.length <= 1
    # return full_array
  # else
    # midpoint = full_array.length / 2
    # left_half = full_array[0, midpoint]
    # right_half = full_array[midpoint, -1]
    # merge(merge_sort(left_half), merge_sort(right_half))
  # end
# end
# 
# def merge (array1, array2)
  # merged_array = []
  # until array1.empty? || array2.empty?
    # if array1[0] < array2[0]
      # merged_array << array1.shift
    # else
      # merged_array << arrray2.shift
    # end
  # end
# end

# This one was tough; I understood the concept, but it did not occur to me to write a separate method for the merging.

a = [3, 2, 1, 13, 8, 5, 0, 1]
b = [105, 79, 100, 110] 

# p merge_sort(a)
# p merge_sort(b)
