puts "開始の年を入力してください"
start_year = gets.chomp.to_i
puts "終わりの年を入力してください"
end_year = gets.chomp.to_i
year = start_year

while year <= end_year
  if year % 4 == 0
    if year % 100 == 0
      if year % 400 == 0
        puts year
      end
      year += 1
      next
    end
    puts year
  end
  year += 1
end
