# writing to a file

print 'Hello. Please enter a Celsius value: '
celsius = gets.to_i
fahrenheit = (celsius.to_i * 9 / 5) + 32

puts "Saving result to output file 'temp.out'"
fh = File.new('temp.out', 'w') # 'w' stands for write
fh.puts fahrenheit
fh.close
