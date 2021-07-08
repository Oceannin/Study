# frozen_string_literal: true

require 'date'

flag1 = Date.julian_leap? 2021
flag2 = Date.gregorian_leap? 2021
flag3 = Date.leap? 2021

p flag1
p flag2
p flag3
