class Timer
	attr_accessor :seconds
	def initialize
		@seconds = 0
	end

	def time_string
		i=1
		y=1
		sec = @seconds
		if sec<10
			sec = "00:00:0"+sec.to_s
		elsif sec<60
			sec = "00:00:"+sec.to_s	
		elsif sec>60 and sec<3600
			while i<60
				if sec-60<(60*i)
					if 60*i<600
						if sec-(60*i)<10
							sec ="00:0"+i.to_s+":0"+(sec-(60*i)).to_s
							i=60
						else
							sec ="00:0"+i.to_s+":"+(sec-(60*i)).to_s
							i=60
						end
					else
						if sec-(60*i)<10
							sec ="00:"+i.to_s+":0"+(sec-(60*i)).to_s
							i=60
						else
							sec ="00:"+i.to_s+":"+(sec-(60*i)).to_s
							i=60
						end		
					end
				else
					i = i+1				
				end
			end
		else
			while y<60
				if sec-3600<(3600*y)
					if 3600*y<36000
						while i<60
							if sec-(3600*y)-60<(60*i)
								if 60*i<600
									if sec-(3600*y)-(60*i)<10
										sec ="0"+y.to_s+":0"+i.to_s+":0"+(sec-((3600*y)+(60*i))).to_s
										i=60
										y=60
									else
										sec ="0"+y.to_s+":0"+i.to_s+":"+(sec-((3600*y)+(60*i))).to_s
										i=60
										y=60
									end
								else
									if sec-(3600*y)-(60*i)<10
										sec ="0"+y.to_s+":0"+i.to_s+":0"+(sec-((3600*y)+(60*i))).to_s
										i=60
										y=60
									else
										sec ="0"+y.to_s+":0"+i.to_s+":"+(sec-((3600*y)+(60*i))).to_s
										i=60
										y=60
									end
								end
							else
								i=i+1
							end
						end
					else
						while i<60
							if sec-(3600*y)-60<(60*i)
								if 60*i<600
									if sec-(3600*y)-(60*i)<10
										sec =y.to_s+":0"+i.to_s+":0"+(sec-((3600*y)+(60*i))).to_s
										i=60
										y=60
									else
										sec =y.to_s+":0"+i.to_s+":"+(sec-((3600*y)+(60*i))).to_s
										i=60
										y=60
									end
								else
									if sec-(3600*y)-(60*i)<10
										sec =y.to_s+":0"+i.to_s+":0"+(sec-((3600*y)+(60*i))).to_s
										i=60
										y=60
									else
										sec =y.to_s+":0"+i.to_s+":"+(sec-((3600*y)+(60*i))).to_s
										i=60
										y=60
									end
								end
							else
								i=i+1
							end
						end
					end
				else
					y = y+1
					
				end
			end
		end
		sec
	end
end
