# frozen_string_literal: true

class Animals
end

class Hordovie < Animals
end

class Mlekopit < Hordovie
end

class Primat < Mlekopit
end

class Gominidi < Primat
end

class Ludi < Gominidi
end

class Chelovek < Ludi
end

WILD = [Animals, Hordovie, Mlekopit, Gominidi, Ludi, Chelovek].freeze

obj = WILD.map(&:new)
puts obj
