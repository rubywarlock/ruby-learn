class Neuron
  @@weight = 0.5
  @@last_error = 0
  STEP = 0.00000001

  def processInputData(input)
    input * @@weight
  end

  def restoreInputData(output)
    output / @@weight
  end

  def train input, expected_result
    begin
      @@last_error = processInputData(input)
      if @@last_error != expected_result
        @@weight = @@weight + @@last_error * STEP
      end
    end while @@last_error <= expected_result
  end
end

neuron = Neuron.new
neuron.train(100, 62.1371)

puts neuron.processInputData(50)



