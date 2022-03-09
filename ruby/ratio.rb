#Given an array of integers, calculate the ratios of its elements
# that are zero, negative, and positive. Print the decimal value 
# of each fraction on a new line with SIX decimal places.
def plusMinus(arr)
    ratio_array = [0,0,0]

    arr.each do |num|
        if num == 0
            ratio_array[0] +=1
        elsif num < 0
            ratio_array[1] +=1
        elsif
            ratio_array[2] +=1
        end       
    end
    ratio_array.map{|ele| puts sprintf('%07.6f', (ele.to_f/arr.length))}
end

plusMinus([1,2,0,-1,-1])
plusMinus([0, 0, 5, -9, -9, 0, -1, -1])