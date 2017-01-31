# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class. 

# The Tv class will have the attributes: power, volume, and channel. 
# The Remote class will have just one attribute: tv. This will represent #which tv it actually controls.
# The Remote will have the following instance methods: 
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)

class Tv 
  attr_accessor :power, :volume, :channel

  def initialize(controls)
    @power = controls[:power] || false 
    @volume = controls[:volume] || 0
    @channel = controls[:channel] || 1
  end 

end 

tv1 = Tv.new(power: false, volume: 0, channel: 3)

class Remote < Tv
  attr_accessor :tv

  
  def initialize(tv)
    @tv = tv[:tv] 
  end 

  def toggle_power
    if @power == true
      tv.power = false
      puts "The TV is now on"
    else 
      tv.power = true
    end 
  end

  def increment_volume
    tv.volume +=1
  end

  def decrement_volume
    tv.volume = tv.volume - 1 
  end

  def set_channel(input)
    tv.channel = input
  end
end 

remote1 = Remote.new(tv: tv1)
#testing toggle_power
puts "Tests for Tv and Remote"
puts "------"
puts "Testing Power Button"

remote1.toggle_power
if tv1.power == true 
  puts "The Tv is on!!"
  puts "pass!"
else 
  puts " uh oh the tv is off "
  puts "fail :("
end 

puts "------"

puts "Testing Volume Increase"
remote1.increment_volume
if tv1.volume == 1
  puts "the volume is now 1"
  puts "pass!"
else 
  puts "fail :("
end 

puts "------"

puts "Testing Volume Decrease"
remote1.decrement_volume
if tv1.volume == 0
  puts "the volume is muted"
  puts "pass!"
else 
  puts "fail :("
end 

puts "------"

puts "Testing Channel Changer"
remote1.set_channel(45)
if tv1.channel == 45
  puts "you are now watching your favorite channel!"
  puts "pass!"
else 
  puts "fail :("
end   



