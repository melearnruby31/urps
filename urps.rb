urps = ['Rock','Fire','Scissors','Snake','Human','Tree','Wolf','Sponge','Paper','Air','Water','Dragon','Devil','Lightning','Gun']
urpselect = [' 1: Rock',' 2: Fire',' 3: Scissors',' 4: Snake',' 5: Human',' 6: Tree',' 7: Wolf',' 8: Sponge',' 9: Paper','10: Air','11: Water','12: Dragon','13: Devil','14: Lightning','15: Gun']

puts 'Welcome to Ultimate Rock Paper Scissors'
sleep 1
puts ''
puts 'Please make a selection to make a play.'
sleep 1
puts '' 
puts urpselect
sleep 1
puts ''
puts 'Select 1 - 15.'

select = gets.chomp

p1 = select.to_i - 1
p2 = rand(14)

player1= urps[p1]
player2= urps[p2]

slot1 = p1 + 1
slot2 = p1 + 2
slot3 = p1 + 3
slot4 = p1 + 4
slot5 = p1 + 5
slot6 = p1 + 6
slot7 = p1 + 7

if slot7 > 14
	slot7 = (slot7 - 15)
end

if slot6 > 14
	slot6 = (slot6 - 15)
end

if slot5 > 14
	slot5 = (slot5 - 15) 
end

if slot4 > 14
	slot4 = (slot4 - 15)
end

if slot3 > 14
	slot3 = (slot3 - 15)
end

if slot2 > 14
	slot2 = (slot2 - 15)
end

if slot1 > 14
	slot1 = (slot1 - 15) 
end

hands = {urps[p1] => [urps[slot1], urps[slot2], urps[slot3], urps[slot4], urps[slot5], urps[slot6], urps[slot7]]}

if p1 == (p2)
	sleep 1
	puts ''
	puts player1.capitalize + ' versus ' + player2.capitalize
	puts 'DRAW'
else
	result = hands[player1].include?(player2)
	sleep 1
	puts ''
	puts 'Player 1: ' + player1.capitalize
	puts 'Player 2: ' + player2.capitalize
	
		if result == true
			sleep 1
			puts ''
			puts player1.capitalize + ' beats ' + player2.capitalize
			puts 'Player 1 wins!!!'
			
		elsif result == false
			sleep 1
			puts ''
			puts player2.capitalize + ' beats ' + player1.capitalize
			puts 'Player 2 wins!!!'
		end
end

