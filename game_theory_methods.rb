collection = (1..100).to_a

collection.each do |x|
  collection.each do |y|
    print "|X|"
  end
  puts ""
end

# this will print out a 100 by 100 grid on your command line
# this is the core functionality that I am going to use to write some game theory
# programs
