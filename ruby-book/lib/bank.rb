require_relative './deep_freezable'

class Bank
  extend DeepFreezable  　　

  CURRENCIES = deep_freeze({ 'Japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee' })
end
