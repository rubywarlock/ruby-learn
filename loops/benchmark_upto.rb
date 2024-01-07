require 'benchmark'

def run
  times = 100_0000

  Benchmark.bm(30) do |b|
    b.report "upto" do
      1.upto(times).each do |e|
        t = e
      end
    end
    b.report "range" do
      (1..times).each do |e|
        t = e
      end
    end
  end
end

run
