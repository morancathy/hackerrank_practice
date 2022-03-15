# Microwave timers are smart enough to know that when you press 90 for seconds, you mean '01:30',
# We want to have a "smart display" that will convert this to the lowest form of minutes and seconds, rather than leaving it as 90 seconds.
# Build a class that accepts buttons entered and converts them to the proper display panel time.
class Microwave
  def initialize(num)
    @num = num
  end

    def timer
      if @num == 100
        "01:00" 
      elsif @num <= 100        
        minutes = @num / 60
        seconds = @num % 60
        "#{sprintf('%02.0f', minutes)}:#{sprintf('%02.0f',seconds)}"
      else
        time_arr = @num.to_s.split("").to_a  
        seconds = time_arr.pop(2).join("").to_i
        minutes = time_arr.join("").to_i
        seconds > 59 ? convert_seconds(minutes, seconds) 
                     : "#{sprintf('%02.0f', minutes)}:#{sprintf('%02.0f', seconds)}"
      end 
    end

    def convert_seconds(min, sec)
      minutes = min + (sec / 60)
      seconds = sec % 60
      "#{sprintf('%02.0f', minutes)}:#{sprintf('%02.0f',seconds)}"
    end
end

p Microwave.new(1001).timer