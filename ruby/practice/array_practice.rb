#---------------------------------------------------
#palindome challenge
words = ["level", "selfless", "racecar","cathy"]
palindrome = words.select { |word| word == word.reverse}
p palindrome

#---------------------------------------------------
#return array of odds and evens from an array. On one line, seperate by coma.
arr = [1, 2 , 3, 4, 5, 6]

def evens_and_odds(numbers)
    even = []
    odd = []
    numbers.each { |num| num.odd? ? odd << num : even << num}
 end
 
 def evens_and_odds1(numbers)
    numbers.partition{ |num| num.odd? }
 end
 evens_and_odds(arr)
 p evens_and_odds1(arr)
 #---------------------------------------------------
