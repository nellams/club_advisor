# Your golf coach has given you the following table,
# which represents the club you should use based on your distance from the hole, in yards.
require "pry"
club_advise = {
driver: 200,
four_wood: 180,
five_wood: 170,
two_iron: 170,
three_iron: 160,
four_iron: 150,
five_iron: 140,
six_iron: 130,
seven_iron: 120,
eight_iron: 110,
nine_iron: 95,
pitching_wedge: 80,
sand_wedge: 20,
putter: 0 }

puts "How many yards are you from the hole?"
yards = gets.chomp.to_i

club_advise.each do |club, distance|
  if yards > distance
    puts "Use the #{club}!".gsub(/_/, " ")
    break
  end
end
# club_advise.each_value do |y|
# if yards > y
#   puts "#{club_advise[y]}"
# end
# end
# binding.pry
# break
