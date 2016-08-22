require 'date'
require 'artii'
require 'udacicharts'
require 'colorize'

a = Artii::Base.new :font => "speed"
hot100 = BillboardCharts.new.get_list

stars = "*"*11
stars = stars.colorize(:blue)

tid = Date.today.strftime("%a %d %b %Y")
tid = tid.colorize(:yellow)

hot_100 = a.asciify('Hot 100')
#hot_100 = hot_100.colorize(:magenta)
#pp hot100
#p hot100

def print_hot100(list)
	counter = 1
	list.each do |makers, song|
		puts "#{counter}. #{song} - #{makers}"
		counter += 1
	end
end

puts "#{stars} #{tid} #{stars}"
puts hot_100.colorize(:magenta)
print_hot100(hot100)

