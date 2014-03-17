require "spec_helper"

describe Sweeper::Comparer do
  before(:each) do
    # FIXME move data to fixtures
    @parsed_filenames = ["ui/orange", "app"]
    @searched_filenames = @parsed_filenames + ["extra-file"]

    @comparer = Sweeper::Comparer.new(@parsed_filenames, @searched_filenames)
  end

  it "compares filenames" do
    expect(@comparer.files.class).to eq Array
    expect(@comparer.files).to eq (@searched_filenames - @parsed_filenames)
  end
end