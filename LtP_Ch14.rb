# 14

#time profiler

def profile block_description, &block
 # To turn profiling on/off, set this
 # to true/false.
 profiling_on = true

 if profiling_on
  start_time = Time.new
  block.call
  duration = Time.new - start_time
  puts "#{block_description}: #{duration} seconds"
 else
  block.call
 end
 
end


# Grandfather Clock

def grandfather_clock &block
 hour = Time.new.hour

 if hour >= 13
 hour = hour - 12
 end

 if hour == 0
 hour = 12
 end

 hour.times do
 block.call
 end
end

grandfather_clock do
puts 'DONG!'
end

profile 'grandfather_clock' do
puts 'DONG!'
end

# Logger

def log desc, &block
 puts 'Beginning "' + desc + '"...'
 result = block.call
 puts '..."' + desc + '" finished, returning: ' + result.to_s
end
log 'outer block' do
 log 'some little block' do
  1**1 + 2**2
 end
 log 'yet another block' do
  '!doof iahT ekil I'.reverse
 end
 '0' == 0
end

# Better Logger

$logger_depth = 0

def log desc, &block
 prefix = ' '*$logger_depth
 puts prefix + 'Beginning "' + desc + '"...'
 $logger_depth = $logger_depth + 1
 result = block.call
 $logger_depth = $logger_depth - 1
 puts prefix + '..."' + desc + '" finished, returning: ' + result.to_s
end

log 'outer block' do
 log 'some little block' do
  log 'teeny-tiny block' do
   'lOtS oF lOVe'.downcase
  end
 7 * 3 * 2
 end

 log 'yet another block' do
  '!doof naidnI evol I'.reverse
 end
'0' == "0"
end


