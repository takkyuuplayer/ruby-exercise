# frozen_string_literal: true

def to_hex(red, green, blue)
  [red, green, blue].reduce('#') do |prev, val|
    prev += val.to_s(16).rjust(2, '0')
    prev
  end
end

def to_ints(hex)
  r = hex[1..2]
  g = hex[3..4]
  b = hex[5..6]
  [r, g, b].map(&:hex)
end
