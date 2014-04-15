class Sweeper::Sweep
  def self.run(rails_root)
    dirs = ["app/assets", "lib/assets", "vendor/assets"]
    dirs.map!{|path| rails_root + path}

    searched = Sweeper::Searcher.search(dirs)

    requires = []
    searched.each do |filename|
      requires += Sweeper::Parser.parse filename
    end

    compared = Sweeper::Comparer.compare(requires, searched)
  end
end