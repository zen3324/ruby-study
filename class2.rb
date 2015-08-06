puts "生まれた年を入力してください"
year = gets.chomp.to_i
puts "生まれた月を入力してください"
month = gets.chomp.to_i
puts "生まれた日を入力してください"
day = gets.chomp.to_i

birthday = Time.new(year, month, day)
now = Time.new
while  birthday < now
  puts birthday.strftime("%Y年%m月%d日") + "はあなたの誕生日です。おめでとう！"
  birthday += (60 * 60 * 24 * 365)
end
