#!/usr/bin/ruby

class NDate

	attr_accessor :year, :month, :dow, :dom

	def initialize year, month, dom, dow
		@year = year
		@month = month
		@dow = dow
		@dom = dom
	end

	def incr
		if @dow < 6
			@dow += 1
		else
			@dow = 0
		end

		if @dom < days_per_month
			@dom += 1
		else
			@dom = 1
			if @month < 12
				@month += 1
			else
				@month = 1
				@year += 1
			end
		end

	end
	
	def leapyear? year
		(@year % 4 == 0 and not @year % 100 == 0) or @year % 400 == 0
	end

	def days_per_month

		d = [31, nil, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

		if @month != 2
			d[@month-1] 
		elsif leapyear?(@year)
			29
		else
			28
		end
	end

	def cond?
		@dom == 1 and @dow == 0
	end

end


def main
	date = NDate.new 1901, 1, 1, 2

	cond = 0

	until date.year == 2001
		if date.cond?
			cond += 1
			p date
			p cond
		end
		date.incr
	end
end

main
