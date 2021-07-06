class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14){Array.new}
    @player1 = player1
  end

  def place_stones
    @cups.each_with_index do |cup, i|
      if i != 6 && i != 13
        4.times do
          cup << :stone
      end
    end
    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
      if start_pos < 0 || start_pos > 12
          raise "Invalid starting cup" 
      elsif @cups[start_pos].empty?
          raise "Starting cup is empty"
      end  
  end

  def make_move(start_pos, current_player_name)

      
  end

  def next_turn(ending_cup_idx)
      if ending_cup_idx == 6 || ending_cup_idx == 13
          :prompt
      elsif @cups[ending_cup_idx].count == 1
          :switch
      else
          ending_cup_idx
      end
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
      return @cups[0..5].all?{|cup| cup.empty?} || @cups[7..12].all?{|cup| cup.empty?}
  end

  def winner
      player1total = @cups[6].length
      player2total = @cups[13].length

      case player1total <=> player2total
      when 0
          :draw
      when 1
          @name1
      when -1
          @name2
      end
  end
end
