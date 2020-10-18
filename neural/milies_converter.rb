class MainNeuron
  attr_accessor :smoothing, :weight, :last_error

  def initialize(smoothing = 0.00000001, weight = 0.5)
    @smoothing = smoothing
    @weight = weight
    @last_error = 0
  end

  def processInputData(input)
    input * @weight
  end

  def restoreInputData(output)
    output / @weight
  end
end

class NeuronOriginal < MainNeuron
  def train input, expected_result
    3.times do
    #begin
      actual_result = processInputData(input)
      @last_error = expected_result - actual_result
      correction = @last_error / actual_result
      @weight += correction * @smoothing

      puts "actual: #{actual_result};"
      puts "correction: #{correction}"
      puts "@last_error: #{@last_error}; correction: #{correction}"
      puts "SMOOTHING: #{@smoothing};"
      puts "@weight: #{@weight};"
    end
    #end while @last_error > @smoothing || @last_error < (-@smoothing)
  end
end

class Neuron < MainNeuron
  def train input, expected_result
    while @last_error <= expected_result
      @last_error = processInputData(input)
      if @last_error != expected_result
        @weight += @last_error * @smoothing
      end

      #puts "last_error #{@last_error}"
      #puts "weight #{@weight}"
    end
  end
end

def run(num = nil, smoothing = 0.00001, weight = 0.5)
  if num == 1
    return NeuronOriginal.new(smoothing, weight)
  else
    return Neuron.new(smoothing, weight)
  end
end
# 9999863070034277
# 9999856607256522
# 9999885252439985
# 9999863070034277
neuron = run(1, 0.0001, 0.5)

neuron.train(1, 75)

#puts neuron.processInputData(1) # 31,0686
puts neuron.restoreInputData(75) # 31,0686

#neuron.train(100, 62.1371)
#puts neuron.processInputData(50) # 31,0686
#puts neuron.restoreInputData(1) # 31,0686



