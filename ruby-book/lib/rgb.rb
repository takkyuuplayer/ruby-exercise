# frozen_string_literal: true

def to_hex(r, g, b)
  [r, g, b].reduce('#') do |prev, val|
    prev += val.to_s(16).rjust(2, '0')
  end
end

def to_ints(hex)
  r = hex[1..2]
  g = hex[3..4]
  b = hex[5..6]
  [r, g, b].map(&:hex)
end
