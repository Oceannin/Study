# frozen_string_literal: true

class Seo
  attr_accessor :title, :description, :keywords
end

class News < Seo
  attr_accessor :date
end

class About < Seo
  attr_accessor :phones, :address
end
