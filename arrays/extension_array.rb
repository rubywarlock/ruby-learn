# frozen_string_literal: true

require 'benchmark'

class Object

  class Array
    def while
      i, array = 0, dup

      while size > 0
        yield(shift, i)

        i += 1
      end

      return array
    end

  end

  class Hash
    def while
      index, hash = 0, dup

      while size > 0

        yield(*(shift), index)

        index += 1
      end

      return hash
    end
  end
end

def run_2
  a = ["one", "two", "three"]
  print a; puts
  a = a.while do |el, i|
    puts "#{el}, #{i}"
  end

  print a; puts
end

def run_3
  a = {one: "ONE", two: "TWO", three: "THREE"}
  print a; puts

  a = a.while do |el, i|
    puts "#{el}, #{i}"
  end

  print a; puts
end

def run
  times = 100_000
  array = (1..1_000).to_a

  Benchmark.bm(30) do |b|
    b.report "each" do
      times.times do |i|
        t = 0
        array.each do |element|
          t = element
        end
      end
    end

    b.report "Array.while" do
      a = array.dup
      times.times do |i|
        t = 0
        a.while do |el|
          t = el
        end
      end
    end

    b.report "while i < limit" do
      times.times do |i|
        limit = array.size
        t = 0
        i = 0
        while i < limit
          t = array[i]
          i += 1
        end
      end
    end

    b.report "map" do
      times.times do |i|
        t = 0
        t = array.map do |el|
          el
        end
      end
    end
  end
end

run