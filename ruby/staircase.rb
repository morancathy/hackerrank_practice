# stairbase base and height are both equal to n. It is drawn using # symbols and spaces. 
# The last line is not preceded by any spaces. Write a program that prints a staircase of size n.
# The last line must have 0 spaces in it.

def staircase(n)
    arr = (1..n).to_a
    arr.map do |num |
        white_spaces = arr.length - (num)
        pound_arr = []
        num.times { pound_arr.push('#')}
        white_spaces.times{pound_arr.unshift(" ")}
        puts "#{pound_arr.join()}"
    end
end

num_of_stairs = 5
num_of_stairs1 = 8
staircase(num_of_stairs)
staircase(num_of_stairs1)