p File.readlines("input.txt").map(&:to_i).each_cons(2).select { _1 < _2 }.length #1616
