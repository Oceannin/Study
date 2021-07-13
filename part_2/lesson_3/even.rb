p ([*1..10]).select { |x| x.even?}
p [*1..10].select(&:even?) 