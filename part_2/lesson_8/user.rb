# frozen_string_literal: true

class User
  attr_accessor :f_name, :l_name, :m_name, :email

  def initialize(f_name:, l_name:, m_name:, email:)
    @f_name = f_name
    @l_name = l_name
    @m_name = m_name
    @email = email
  end

  def say
    self.class.name
  end

  alias to_s say
end

class Author < User
end

class Admin < User
end

class Moderator < User
end
