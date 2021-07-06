# p [1, 2, 3, 4].select { |x| x.even? }
p [1, 2, 3, 4].select(&:even?)
