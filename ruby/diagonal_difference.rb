# Given a square matrix, calculate the absolute difference between 
# the sums of its diagonals. Not knowing how many rows are in the cube.

array = [[11, 2, 4], [4, 5, 6], [10, 8, -12]]

def diagonalDifference(arr)
    i = 0
    diagonal_1 = 0
    diagonal_2 = 0

    arr.each do |array|
        while i < array.length
            diagonal_1+=(arr[i][i])
            diagonal_2+=(arr[i][arr.length-(1+i)])
            i+=1
        end
    end
    (diagonal_1 - diagonal_2).abs
end

p diagonalDifference(array)