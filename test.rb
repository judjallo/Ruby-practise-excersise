class TimeTables 
  def initialize (number)
    @number = number
    end

    def output
      if @number == -1
        (1..12).each do |number|
        end
      else 
        output_times_table(@number)
      end
    end

    def output_times_tables (number)
      puts "Is #{number} time tables: "
      (1..2).each do |multiplier|
        total = number * multiplier
        puts "#{multiplier} * #{number} = #{total}"
      end
      puts "\n"
    end
end