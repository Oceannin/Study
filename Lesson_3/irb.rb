class A
  def [](a, b)
    puts a * b
  end
end

obj = A.new

obj[87_220, 356_782]

# rubocop:disable Lint/Debugger
binding.irb
# rubocop:enable Lint/Debugger
