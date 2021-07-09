def slow_dance(direction,tiles_array)
    tiles_array.each_with_index do |tile, i|
    return i if tile == direction
  end
end

def fast_dance(direction, new_tiles_data_structure)
    new_tiles_data_structure[direction]
end



tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
new_tiles_data_structure = {"up" => 0,
    "right-up" => 1,
    "right"=> 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7}
p slow_dance("up", tiles_array)
p slow_dance("right-down", tiles_array)
p fast_dance("up", new_tiles_data_structure)
p fast_dance("right-down", new_tiles_data_structure)

