lineWidth = 60
chapter = ["1章:  数", "2章:  文字", "3章:  変数"]
page = ["p. 1", "p. 72", "p. 118"]

puts "目次".center  lineWidth

chapter.size.times do |i|
  puts chapter[i].ljust(lineWidth/2) + page[i].rjust(lineWidth/2)
end
