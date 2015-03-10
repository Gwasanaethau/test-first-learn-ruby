def measure(iterations=1)
  timings = []
  if block_given?
    iterations.times do
      past = Time.now
      yield
      present = Time.now
      timings << present - past
    end
  end
  timings.inject(:+) / timings.length
end