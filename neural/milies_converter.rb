class NeuronOriginal
  @@weight = 0.5
  @@last_error = 0
  SMOOTHING = 0.000001

  def processInputData(input)
    input * @@weight
  end

  def restoreInputData(output)
    output / @@weight
  end

  def train input, expected_result
    begin
      actual_result = processInputData(input)
      @@last_error = expected_result - actual_result
      correction = @@last_error / actual_result
      @@weight += correction * SMOOTHING
      puts "actual: #{actual_result}; SMOOTHING: #{SMOOTHING}; @@last_error: #{@@last_error}; correction: #{correction}"
    end while @@last_error > SMOOTHING || @@last_error < -SMOOTHING
  end
end

class Neuron
  @@weight = 0.5
  @@last_error = 0
  SMOOTHING = 0.00000001

  def km_to_milles(input)
    input * @@weight
  end

  def milles_to_km(output)
    output / @@weight
  end

  def train input, expected_result
    begin
      @@last_error = km_to_milles(input)
      if @@last_error != expected_result
        @@weight += @@last_error * SMOOTHING
      end
    end while @@last_error <= expected_result
  end
end

neuron = Neuron.new
neuron.train(100, 62.1371)

puts neuron.km_to_milles(50) # 31,0686
puts neuron.milles_to_km(1) # 31,0686



