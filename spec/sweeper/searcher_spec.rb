require "spec_helper"

describe Sweeper::Searcher do
  before(:each) do
  end

  it "searches files" do
    searcher = Sweeper::Searcher.new(["spec/fixtures"])

    expect(searcher.filenames.class).to eq Array
    # FIXME
    expect(searcher.filenames.length).to eq 2
  end
end