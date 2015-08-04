puts "なにか用かい？"
bye_count = 0

while bye_count < 3
  str = gets.chomp
  if str == str.upcase
    year = 1930 + rand(21)
    puts "いやー、" + year.to_s + "年以来ないねー!"
    if str == "BYE"
      bye_count += 1
    else
      bye_count = 0
    end
  else
    puts "は?! もっと大きな声で話しておくれ、坊や!"
    bye_count = 0
  end
end
