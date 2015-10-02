def grandpa_clock &block
  now = Time.now.hour
  if now > 12
    now -= 12
  end
  now.times do
    block.call
  end
end

grandpa_clock do
  puts "DONG!"
end

grandpa_clock do
  puts "GANG!"
end
