lines = File.readlines("input.txt")

commands = {
  forward: 0,
  depth: 0,
  down: 0,
  up: 0
}

lines.each do |l|
  cmd, val = l.split
  commands[cmd.to_sym] += val.to_i
  commands[:depth] += val.to_i * (commands[:down] - commands[:up]) if cmd == 'forward'
end

p commands[:forward] * commands[:depth] # 1781819478
