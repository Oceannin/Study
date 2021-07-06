# [*1..12].each do |i|
#     break if i > 5
#     puts i
# end

[*1..12].each do |i|
    break if i.even?
    puts i
end