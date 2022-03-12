# birthdayCakeCandles function takes in a single integer, n, the size of candles and n space-separated integers
# where each integer i describes the height of candles[i]. Return the number of candles that are tallest

def birthdayCakeCandles(candles)
    candles.shift

    tallest_candle = candles.sort.reverse[0]

    qty_of = {tallest_candle => 0}
    
    candles.each {|height| qty_of[tallest_candle] += 1 if height >= tallest_candle } 

    return qty_of[tallest_candle]
end
p "There are #{birthdayCakeCandles([4, 3, 2, 1, 3])} candles that are tallest"
