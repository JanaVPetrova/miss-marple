class MissMarple::Detector
  def self.run(rails_root)
    dirs = ["app/assets", "lib/assets", "vendor/assets"]
    dirs.map!{|path| rails_root + path}

    searched = MissMarple::Searcher.search(dirs)

    required = searched.inject([]){ |result, fname| result + MissMarple::Parser.parse(fname) }

    # FIXME insert requiring into required. this is not a place for logic %)
    # FIXME dirty hack
    requiring = searched.reject(){ |fname| MissMarple::Parser.parse(fname).empty? }
    searched -= requiring

    unused = MissMarple::Comparer.compare(required, searched)

    MissMarple::Logger.log(unused, requiring)
  end
end