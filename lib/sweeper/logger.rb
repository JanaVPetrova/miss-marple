class Sweeper::Logger
  def self.log(unused, requiring)
    if unused.empty?
      puts "No unused assets!"
    else
      puts "Unused assets:"
      puts unused
      puts
      puts "Requiring files: "
      puts requiring
    end
  end
end