class SimpleBenchmarker
  def run(description, &block)# description just for fun
    start_time = Time.now
    block.call
    end_time = Time.now
    elapsed = end_time - start_time
    puts "\n" # to separate . in sleeping time
    puts "#{description} results"
    puts "Elapsed time: #{elapsed} seconds"
   end
 end

benchmarker = SimpleBenchmarker.new
benchmarker.run "Sleep a random amoumt of time" do
  5.times do
    print "." # will show on screen . in sleeping time
    sleep(rand(0.1..1.0))
    end
 end