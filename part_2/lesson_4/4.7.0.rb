class lab
  @@count = 0
  @@materials = []

  def perehod 
    @@count += 1
    @@materials << Material.new
    @@materials.last
  end

  class Material
# вот здесь надо подумать что происходит с веществом
  end
end
