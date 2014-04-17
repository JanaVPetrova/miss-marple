class Sweeper::Sweep
  def self.run(rails_root)
    dirs = ["app/assets", "lib/assets", "vendor/assets"]
    dirs.map!{|path| rails_root + path}

    searched = Sweeper::Searcher.search(dirs)

    requires = searched.inject([]){ |result, fname| result + Sweeper::Parser.parse(fname) }

    compared = Sweeper::Comparer.compare(requires, searched)
  end
end