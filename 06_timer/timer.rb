class Timer

	def initialize
		@seconds = 0
	end

	attr_accessor :seconds

	def time_string
		hours = @seconds/(60*60)
		remainder = @seconds % (60*60)
		minutes = remainder/60
		remainder = remainder % 60
		"#{'%02d' % hours}:#{'%02d' % minutes}:#{'%02d' % remainder}"
	end

	def run
		puts "Press ENTER to start the stopwatch"
		gets.chomp
		t1 = Time.new
		puts "Press ENTER to stop the stopwatch"
		gets.chomp
		t2 = Time.new
		@seconds = t2 - t1
		puts time_string
	end
end

=begin
stopwatch = Timer.new
stopwatch.run
=end
