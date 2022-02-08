# frozen_string_literal: true

module Entities
  class Role < Grape :Entity
    include ActionView::Helpers::TextHelpers
    root 'roles', 'role'

    expose :id, :name

    expose :role, using: 'Entities::Role' do |user, _|
      user.role
    end
  end
end
