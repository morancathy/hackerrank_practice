# Return log lines with any leading or trailing white space removed,
# return log line's log level, which should be returned in lowercase,
# reformats the log line, with message first and log level after it in parentheses.

class LogLineParser
    def initialize(line)
      @line = line
    end
  
    def message
      array = @line.split(": ")    
      p array[1].strip
    end
  
    def log_level
      array = @line.split("[")
      array = array[1].split("]")
      p array[0].downcase
    end
  
    def reformat     
      string = @line.strip
      string.gsub!(/ \t/, '')
      string.sub!(/]/,')')
      # array[0] = array[0].gsub(/(/,'(')      # => why doesn't this work?
      string.slice!(0)
      p string.split(": ").reverse().join(' (').downcase.capitalize
    end
  end
  LogLineParser.new('[ERROR]: Invalid operation   ').message
  LogLineParser.new('[ERROR]: Invalid operation').log_level 
  LogLineParser.new('[INFO]: Operation completed').reformat
  LogLineParser.new("[ERROR]: \t Corrupt disk\t \t \r\n").reformat