class Player
  def play_turn(warrior)
    warrior.feel.empty?
	warrior.health
	if !warrior.feel.empty?
		warrior.attack!
	elsif warrior.health < 20
		warrior.rest!
	else
		warrior.walk!
	end
  end
end
