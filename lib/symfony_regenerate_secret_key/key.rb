# frozen_string_literal: true

module SymfonyRegenerateSecretKey
  # Generate new SECRET_KEY for Symfony applications.
  class Key
    # Initialize a new SECRET_KEY.
    def initialize(size = 32)
      a = '0123456789abcdef'
      @key = ''
      (1..size).each do |_|
        @key += a[rand(a.length - 1)]
      end
    end

    # Return the SECRET_KEY as a string.
    def to_s
      @key
    end
  end
end
