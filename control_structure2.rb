puts "なにか用かい？"
str = gets.chomp

while str != "BYE"
  if str == str.upcase
    year = 1930 + rand(21)
    puts "いやー、" + year.to_s + "年以来ないねー!"
  else
    puts "は?! もっと大きな声で話しておくれ、坊や!"
  end
  str = gets.chomp
end
