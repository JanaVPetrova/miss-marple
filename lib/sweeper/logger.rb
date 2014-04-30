class Sweeper::Logger
  def self.log(unused)
    puts "No unused assets!" if unused.empty?

    puts "Here are unused assets:"
    puts unused
  end
end