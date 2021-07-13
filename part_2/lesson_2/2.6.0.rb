# frozen_string_literal: true

MONTHS = %w[January
            Februare
            March
            April
            May
            June
            July
            August
            September
            October
            November
            December].freeze
maximum = MONTHS.freeze.map(&:size).select(&:max)
minimum = MONTHS.freeze.map(&:size).select(&:min)
p maximum
p mininum
