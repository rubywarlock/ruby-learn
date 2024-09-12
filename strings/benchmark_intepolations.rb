

require 'benchmark'

def run
  times = 100_0000

  Benchmark.bm(30) do |b|
    b.report "dual quotes" do
      (1..times).each do |e|
        "text #text text #text text #text #text text #text #text #text #text #text #text
        text #text text #text text #text #text text #text #text #text #text #text #text
        text #text text #text text #text #text text #text #text #text #text #text #text
        text #text text #text text #text #text text #text #text #text #text #text #text"
      end
    end
    b.report "single quotes" do
      (1..times).each do |e|
        'text #text text #text text #text #text text #text #text #text #text #text #text
        text #text text #text text #text #text text #text #text #text #text #text #text
        text #text text #text text #text #text text #text #text #text #text #text #text
        text #text text #text text #text #text text #text #text #text #text #text #text'
      end
    end
  end
end

run
