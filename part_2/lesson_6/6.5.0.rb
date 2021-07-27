# frozen_string_literal: true

en = %w[red orange yellow green gray indigo violet].map(&:to_sym)
ru = %w[красный оранжевый желтый зеленый голубой синий фиолетовый]

puts Hash[en.zip(ru)]
