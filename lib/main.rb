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
  array = []
  if n <2
    array[n] = n
    return n
  else
    array[n-1] = (fibs_rec(n-1) + fibs_rec(n-2))
    return (fibs_rec(n-1) + fibs_rec(n-2))
  end
  array
end

p fibs_rec(8)
# def merge_sort(array)
# end