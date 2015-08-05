puts "好きな数だけ単語を入力してください"
str = gets.chomp
array = []

while str != ""
  array << str
  str = gets.chomp
end

for i in 0...array.size
  for j in 0...array.size - 1
    if array[j] > array[j + 1] then
      tmp = array[j]
      array[j] = array[j + 1]
      array[j + 1] = tmp
    end
  end
end

array.each do |var|
  puts var
end
