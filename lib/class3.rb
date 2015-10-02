class OrangeTree
  attr_reader :year, :orange

  def initialize
    @height = 0
    @year = 0
    @orange = 0
  end

  def height
    @height
  end

  def one_year_passes
    @year += 1
    @orange = 0
    check_year

    if @year > 3
      @orange += @year
    end
  end

  def count_the_oranges
    print @orange.to_s + "個のオレンジがなっています"
  end

  def pich_an_orange
    if @orange > 0
      @orange -= 1
      print "おいしいオレンジです！"
    else
      print "オレンジはなっていません"
    end
  end

  private

  def check_year
    if @year > 10
      puts "オレンジの木が枯れてしまいました"
      exit
    end
  end
end

# tree = OrangeTree.new
# tree.count_the_oranges
# tree.pich_an_orange
# tree.one_year_passes
# tree.count_the_oranges
# tree.pich_an_orange
# tree.count_the_oranges
# tree.one_year_passes
# tree.one_year_passes
# tree.one_year_passes
# tree.count_the_oranges
# tree.pich_an_orange
# tree.count_the_oranges
# tree.pich_an_orange
# tree.one_year_passes
# tree.one_year_passes
# tree.one_year_passes
# tree.one_year_passes
# tree.one_year_passes
# tree.one_year_passes
# tree.one_year_passes
# tree.one_year_passes
# tree.one_year_passes
