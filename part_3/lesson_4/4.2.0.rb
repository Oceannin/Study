# frozen_string_literal: true

class News
  include Comparable
  attr_accessor :title, :body, :created_at

  def initialize(title:, body:, created_at:)
    @title = title
    @body = body
    @created_at = created_at
  end

  def <=>(other)
    created_at <=> other
  end
end

first = News.new(
  title: 'Ruby 3.0',
  body: 'Вышел Ruby 3.0',
  created_at: Time.mktime(2020, 12, 20)
)

second = News.new(
  title: 'Ruby on Rails 6.1',
  body: 'Вышел Ruby on Rails 6.1',
  created_at: Time.mktime(2020, 11, 20)
)

p first >= second
