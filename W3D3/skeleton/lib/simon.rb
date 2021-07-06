class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
      @sequence_length = 1
      @seq = []
      @game_over = false
  end

  def play
    until @game_over
      take_turn
      system("clear")
    end
    game_over_message
    puts "You made it " + @sequence_length.to_s + " tries"
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    if @game_over == false
        round_success_message
        @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
    @seq.each do |color|
       puts color
       system("clear")
    end
  end

  def require_sequence
     puts "Repeat the required seqence"
     @seq.each do |val|
        puts "Input color"
        input = gets.chomp
        if input != val
          @game_over = true
          break
        end
    end
  end

  def add_random_color
      @seq << COLORS.sample
  end

  def round_success_message
      puts "Successful choices"
  end

  def game_over_message
      puts "Game over"
  end

  def reset_game
      puts "Resetting game"
      @seq = []
      @sequence_length = 1
      @game_over = false
  end
end
