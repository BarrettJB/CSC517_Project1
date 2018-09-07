load 'project1.rb'

#Unique Array Tests
puts "Unique array tests"
begin 
  unique_array([]) == [] ? puts("passed 1") : puts("failed empty case")
  unique_array([1,2,3]) == [1,2,3] ?  puts("passed 2") : puts("failed simple case")
  unique_array([4,2,1,4,2]) == [4,2,1] ? puts("passed 3") : puts("failed advanced case")
rescue
  puts "failed spectacularly"
end

puts "Two Sum Tests"
begin
  two_sum?([], 3) ? puts("failed empty case") : puts("passed 1")
  two_sum?([3,4,5], 3) ? puts("failed simple case") : puts("passed 2")
  two_sum?([3,1,2,2,4], 3) ? puts("passed 3") : puts("failed simple case")
rescue
  puts "failed spectacularly"
end