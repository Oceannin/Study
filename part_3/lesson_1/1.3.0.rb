def line
    File.readlines('for1.txt').minmax.join
end
def longshort
    File.readlines('for1.txt').minmax.to_s.size 
end

puts "Слова: #{line}Кол-во символов: #{longshort}"