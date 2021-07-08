# frozen_string_literal: true

def answ
  ans = Array.new(10) { rand(100) }
  ans.minmax
end

p answ
