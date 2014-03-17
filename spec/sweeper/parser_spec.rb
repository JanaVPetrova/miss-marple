require "spec_helper"

describe Sweeper::Parser do
  it "runs tests" do
    expect(true).to eq true
  end

  it "reads manifest" do
    c = Sweeper::Parser.parse("spec/fixtures/app.css")

    expect(c.class).to eq Array
    expect(c.length).to eq 2
  end
end