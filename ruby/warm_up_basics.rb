#sum of all elements in array
def aVeryBigSum(ar)
    sum = 0
    ar.each {|num| sum+=num}
    sum
end
  #--------------------------------------------
# code a serial_average method which is described below:
# It takes a fixed width string in format: SSS-XX.XX-YY.YY. SSS is a three digit serial number, XX.XX and YY.YY are two digit numbers including up to two decimal digits.
# It returns a string containing the answer in format SSS-ZZ.ZZ where SSS is the serial number of that input string, and ZZ.ZZ is the average of XX.XX and YY.YY.
# All numbers are rounded off to two decimal places.
def serial_average(num)
    serial = num[0,3]
    first_dig = num[4,5].to_f
    second_dig = num[10, 5].to_f
  
    avg = ((first_dig + second_dig)/2).round(2)
  
    output = "#{serial}-#{avg}"
   end
  
  p serial_average('001-12.43-56.78')

#--------------------------------------------
#return hash where keys represent the words in the string
#values represent how many times that key occurs
sentence = "Once upon a time in a land far far away"

def word_count(string)
    words = string.split(" ")
    count_hash = Hash.new(0)
    words.each do |word|   
        count_hash[word] += 1   
    end                         
    count_hash
end

p word_count(sentence)