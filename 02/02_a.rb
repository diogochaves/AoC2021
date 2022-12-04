lines = File.readlines("input.txt")

commands = {
  forward: 0,
  down: 0,
  up: 0
}

lines.each do |l|
  cmd, val = l.split
  commands[cmd.to_sym] += val.to_i
end

p commands[:forward] * (commands[:down] - commands[:up]) # 1635930
