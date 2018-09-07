# Part 1

def unique_array(a)
  #is this allowed???
  a.uniq
end

def two_sum?(a,n)
  #go through all items in the list
  a.each_with_index do |num1,index1|
    #go through all items after the selected item
    a[index1..a.length].each do |num2|
      if num1 + num2 == n
        return true
      end
    end
  end
  #if it makes it this far then it is false
  return false
end

def group_anagrams(a)
  hash = {}

  a.each do |string|
    #temp_array << string.chars.sort.join

    string = string.downcase
    sorted_string = string.chars.sort.join

    if(hash.has_key?(sorted_string)) then
      hash[sorted_string] +=  (" " + string)
    else
      hash[sorted_string] = string
    end
end

# Part 2

def palindrome?(s)
  # ADD YOUR CODE HERE
end

def remove_and_append_vowels(s)
  # ADD YOUR CODE HERE
end

def highest_frequency_word(s)
  # ADD YOUR CODE HERE
end

# Part 3

class Book
  # ADD YOUR CODE HERE
end
