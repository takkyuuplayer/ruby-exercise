# frozen_string_literal: true

def convert_hash_syntax(hash)
  hash.gsub(/:(\w+) *=> */, '\1: ')
end
