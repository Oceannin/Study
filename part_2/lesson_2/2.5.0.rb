# frozen_string_literal: true

p WEEK = %w[Понедельник
            Вторник
            Среда
            Четверг
            Пятница
            Суббота
            Воскресенье].freeze.each.select { |x| x[0].include?('С') }
