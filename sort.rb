module Sort
  def self.selection_sort(array)
    clone = array.clone
    for i in (0..clone.length-1)
      min = i
      for j in (i+1..clone.length-1)
        if clone[min] > clone[j]
          temp = clone[min]
          clone[min] = clone[j]
          clone[j] = temp
        end
      end
    end
    clone
  end

  def self.bubble_sort(array)
    clone = array.clone
    length = clone.length
    for i in (0..length-1)
      for j in (i+1..length-1)
        min = clone[i]
        if (min > clone[j])
          temp = min
          clone[i] = clone[j]
          clone[j] = temp
        end
      end
    end
    clone
  end

  def self.merge(left, right)
    merged_size = left.size + right.size
    merged = []
    i = 0
    left_ptr = 0
    right_ptr = 0
    for i in (0...merged_size)
      if (left[left_ptr] == nil)
        merged.push(right[right_ptr])
        right_ptr += 1
      elsif (right[right_ptr] == nil)
        merged.push(left[left_ptr])
        left_ptr += 1
      elsif (left[left_ptr] > right[right_ptr])
        merged.push(right[right_ptr])
        right_ptr += 1
      else
        merged.push(left[left_ptr])
        left_ptr += 1
      end
    end
    merged
  end

  #[8,5,1,3]
  def self.merge_sort(array)
    if array.length <= 1
      return array
    end
    mid = array.length / 2
    left = array[0...mid]
    right = array[mid..array.length - 1]

    a = Sort.merge_sort(left)
    b = Sort.merge_sort(right)

    return Sort.merge(a, b)

  end

end

# 15

module Recursion

  def self.fizz_buzz(n)
    if n == 1
      return
    end
    if n % 3 == 0
      puts "fizz"
    end
    if n % 5 == 0
      puts "buzz"
    end
   return fizz_buzz(n - 1)
  end


  def self.exp(a, b)
    if b == 0
      return 1
    end
    return a * exp(a, b - 1)
  end
end


