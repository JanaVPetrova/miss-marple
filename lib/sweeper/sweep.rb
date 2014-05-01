class Sweeper::Sweep
  def self.run(rails_root)
    dirs = ["app/assets", "lib/assets", "vendor/assets"]
    dirs.map!{|path| rails_root + path}

    searched = Sweeper::Searcher.search(dirs)

    required = searched.inject([]){ |result, fname| result + Sweeper::Parser.parse(fname) }

    # FIXME insert requiring into required. this is not a place for logic %)
    # FIXME dirty hack
    requiring = searched.reject(){ |fname| Sweeper::Parser.parse(fname).empty? }
    searched -= requiring

    unused = Sweeper::Comparer.compare(required, searched)

    Sweeper::Logger.log(unused, requiring)
  end
end