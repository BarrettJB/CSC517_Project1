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
  #Try something with sorting the strings.
end

# Part 2

def palindrome?(s)
  s.downcase == s.reverse.downcase
end

def remove_and_append_vowels(s)
  append = ""

  s.scan(/[aeiou]/i) do |char|
    append += char
  end

  s = s.gsub(/[aeiou]/i,"")
  s += append
end

def highest_frequency_word(s)
  hash = {}

  s.downcase.split(" ").each do |word|
    if(hash.has_key?(word))
      hash[word] += 1
    else
      hash[word] = 1
    end
  end

  hash.key(hash.values.max)
end

# Part 3

class Book
  # ADD YOUR CODE HERE
end
