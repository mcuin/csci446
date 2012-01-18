class Player
  def play_turn(warrior)
    warrior.feel.empty?
	if !warrior.feel.empty?
		warrior.attack!
	else
		warrior.walk!
	end
  end
end
