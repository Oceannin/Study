class Rainbow
  def set_colors(colors)
    @colors = colors
  end

  def colors
    @colors
  end
end
rainbow = Rainbow.new
colors %i[red orange yellow green blue]
rainbow.set_colors(colors)

copy = rainbow.dup

p copy.colors

p rainbow.object_id
p copy.object_id

p rainbow.object_id
p colors.object_id
