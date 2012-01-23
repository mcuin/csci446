class Player
  def play_turn(warrior)
	if warrior.health < 20
		if warrior.health == @health && warrior.health < 20
			warrior.rest!
		elsif !warrior.feel.empty?
			warrior.attack!
		elsif warrior.health < @health
			warrior.walk!
		else 
			warrior.rest!
		end
	else
		if !warrior.feel.empty?
			warrior.attack!
		else 
			warrior.walk!
		end
	end
	@health = warrior.health
  end
end
