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


twodee = []
for x in 1..100 do
  twodee.push(Array.new(100,"O"))
end
# this will generate a 2d array and fill it with various values

(0..99).to_a.each do |x|
  (0..99).to_a.each do |y|
    twodee[x][y] = Random.rand(1...2)
  end
end
# this little bit of code randomly distributes 1s and 2s over the generated 2d grid

(0..99).to_a.each do |x|
  (0..99).to_a.each do |y|
    print twodee[x][y]
  end
  puts ""
end

# this method will generate a random path across the board

def path array
  length = array.length
  out = (1...length).to_a.product((1...length).to_a)
  out.shuffle
end


# this will iterate over the array generated above and print out a board that
# corresponds with those values
