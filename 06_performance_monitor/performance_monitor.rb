# Jade & Mark
def measure(count = 1)
  timings = []
  count.times do
    before = Time.now
    yield
    after = Time.now
    timings << after - before
  end
  timings.inject(0.0) { |sum, el| sum + el } / count
end

# Dan & Mark
=begin
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
=end
