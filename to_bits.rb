f = File.binread(ARGV[0])
bits = f.unpack("b*")[0].split(//)

count_Zero = 0
count_One = 0

bits.each do |b|
  if b == "0"
  	count_Zero += 1
  else
  	count_One += 1
  end
end

puts "found " + count_One.to_s + " bits set to 1"
puts "found " + count_Zero.to_s + " bits set to 0"