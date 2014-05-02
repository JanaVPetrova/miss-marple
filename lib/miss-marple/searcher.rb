class MissMarple::Searcher
  def self.search(paths)
    Dir.glob("**/*.{*css,js,coffee,[sa,sc,le]ss}")
  end
end