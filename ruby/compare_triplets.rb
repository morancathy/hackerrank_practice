# Compare a[0] with b[0], a[1] with b[1], and a[2] with b[2]. If a[i] > b[i], then Alice is awarded 1 point. 
# If a[i] < b[i], then Bob is awarded 1 point. If a[i] = b[i], then neither person receives a point. 
# Comparison points is the total points a person earned. Given a and b, determine their respective comparison points. 

def compareTriplets(a, b)
    arr = [0,0]
    i = 0
    while i < a.length
        arr[0]+=1 if a[i] > b[i]
        arr[1]+=1 if a[i] < b[i]
        i+=1
    end
    arr
end

list_a = [1, 2, 3]
list_b = [3, 2, 1]

p compareTriplets(list_a, list_b)
  #--------------------------------------------
#refactored
def compareTriplets1(a, b)
    arr = [0,0]
    a.each.with_index do |num, index|
        arr[0]+=1 if num > b[index]
        arr[1]+=1 if num < b[index]
    end
    arr
end

list_c = [4, 3, 1]
list_d = [3, 2, 1]

p compareTriplets1(list_c, list_d)