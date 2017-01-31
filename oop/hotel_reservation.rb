# In this exercise, we've already implemented the class, and you have to write the 
# driver code. 
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end


# Write your own driver code below! Make sure your code tests the following:

reservation = HotelReservation.new(customer_name: "Strong", date: "February 1", room_number: "302", amenities: [])
 
# The ability to change a room number even after a reservation has already been created
reservation.date = "February 2"
if  reservation.date == "February 2"
  puts "Pass!"
else 
  puts "Fail"
end
# The add_a_fridge method
if reservation.add_a_fridge == ["fridge"]
  puts "Pass!"
else 
  puts "Fail"
end

# The add_a_crib method

if reservation.add_a_crib == ["fridge", "crib"]
  puts "Pass!"
else 
  puts "Fail"
end 
# The add_a_custom_amenity method

if reservation.add_a_custom_amenity("mini bar") == ["fridge", "crib", "mini bar"]
  puts "Pass!"
else 
  puts "Fail"
end
p reservation