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

# def fibs_rec(n)
# end

# def merge_sort(array)
# end