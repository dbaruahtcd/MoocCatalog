module GreeterHelper
	def formatter_time(time)
		#time in AM/PM format
		time.strftime("%I:%M%p")
	end
end
