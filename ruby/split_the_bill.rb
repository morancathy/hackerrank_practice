# Print Bon Appetit if the bill is fairly split. Otherwise, print integer amount of money that Brian owes Anna.
# bonAppetit has the following parameter(s):
# bill: an array of integers representing the cost of each item ordered
# k: an integer representing the zero-based index of the item Anna doesn't eat
# b: the amount of money that Anna contributed to the bill

# def bonAppetit(bill, k, b)
#     bill.slice!(k)
#     amount_owed = (bill.inject(:+)/2 - b).abs()

#     amount_owed == 0 ? 'Bon Appetit' : amount_owed
# end

def bonAppetit(bill, k, b)
    bill.slice!(k)
    amount_owed = (bill.inject(:+)/2 - b).abs()

    if amount_owed == 0 
        p 'Bon Appetit'
    else 
        p amount_owed
    end

end
p bonAppetit([3,10,2,9], 1, 12)
p bonAppetit([3,10,2,9], 1, 7)