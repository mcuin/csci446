class Player
  def play_turn(warrior)
	@curehealth = 10
	if warrior.health >= 20
		if warrior.feel.wall?
			warrior.pivot!
		elsif warrior.feel.empty?
			warrior.walk!
		elsif !warrior.feel.empty?
			warrior.attack!
		else warrior.health < @health
			warrior.walk!
		end
	else
		if warrior.feel(:backward).captive?
			warrior.rescue!(:backward)
		elsif warrior.health < @curehealth && !warrior.feel(:backward).wall?
			warrior.walk!(:backward)
		elsif warrior.feel(:backward).wall? && warrior.health < 20
			warrior.rest!
		elsif !warrior.feel.empty?
			warrior.attack!
		else
			warrior.walk!
		end
	end
	@health = warrior.health
  end
end