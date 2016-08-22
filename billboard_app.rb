require 'date'
require 'artii'
require 'udacicharts'
require 'pp'
a = Artii::Base.new :font => "speed"
hot100 = BillboardCharts.new.get_list

puts "*"*11 + Date.today.strftime("%a %d %b %Y") + "*"*11
puts a.asciify('Hot 100')
#pp hot100
#p hot100
def lort(list)
	counter = 1
	list.each do |makers, song|
		puts "#{counter}. #{makers} - #{song}"
		counter += 1
	end
end

lort(hot100)

