#Given five positive integers, find the minimum and maximum values 
#that can be calculated by summing exactly four of the five integers. 
#Print the respective minimum and maximum values as a single line 
#of two space-separated long integers.
def miniMaxSum(arr)    
    def min(array) 
        min = array.sort[0...-1]
        min.inject(:+)        # inject accumulator 
    end
    def max(array) 
        max = array.sort.reverse[0...-1]
        max.inject(:+)    
    end  
    print min(arr), " ", max(arr) 
end

miniMaxSum([7, 9, 5, 1, 3])