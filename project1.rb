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
  
  def initialize(name, price)
    self.name = name
    self.price = price
  end

  def price=(price)
    if (price <= 0)
      raise ArgumentError.new("Price must be greater than 0")
    end
    if (price.nil?)
      raise ArgumentError.new("Price must have a value")
    end
    if (!price.is_a?(Float) and !price.is_a?(Integer))
      raise ArgumentError.new("Price must be a Float or Integer")
    end 
    @price = price
  end
  
  def price
    @price
  end
  
  def name=(name)
    if (name.nil? or name.empty?)
      raise ArgumentError.new("Name must have a value")
    end
    if (!name.is_a?(String))
      raise ArgumentError.new("Name must be a string")
    end
    
    @name = name
  end
  
  def name
    @name
  end
  
  def formatted_price
    cents = self.price.modulo(1).round(2)
    dollars = (self.price - cents).to_i
    
    if (dollars == 1)
      s_dollar = "dollar"
    else
      s_dollar = "dollars"
    end
    
    if (cents == 0.01)
      s_cent = "cent"
    else
      s_cent = "cents"
    end
    
    if (cents.zero?)
      puts dollars.to_s + " " + s_dollar + " only"
    else if (dollars.zero?)
      puts cents.to_s + " " + s_cent + " only"
    else 
      puts dollars.to_s + " " + s_dollar + " and " + cents.to_s + " " + s_cent + " only"
    end
    end
    
  end
    
  
end
