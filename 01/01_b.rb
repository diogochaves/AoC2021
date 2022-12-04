lines = File.readlines("input.txt").map(&:to_i)

total = 0
lines.each_cons(3).reduce do |prv, nxt|
  total += 1 if nxt.sum > prv.sum
  nxt
end

p total # 1645
