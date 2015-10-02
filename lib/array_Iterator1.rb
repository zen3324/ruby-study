class ArrayIterator1

  def get
    puts "好きな数だけ単語を入力してください"
    @str = gets.chomp
    @array = []

    while str != ""
      @array << str
      @str = gets.chomp
    end
  end

  def print
    @array.sort.each do |var|
      puts var
    end
  end
end
