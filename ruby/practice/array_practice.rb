#---------------------------------------------------
#palindome challenge
words = ["level", "selfless", "racecar","cathy"]
palindrome = words.select { |word| word == word.reverse}
p palindrome


