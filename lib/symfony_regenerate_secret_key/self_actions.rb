# frozen_string_literal: true

require 'pastel'
require_relative 'meta'

module SymfonyRegenerateSecretKey
  # Collection of command line self-contained actions for this gem.
  class SelfActions
    # Display info about the gem
    def self.info
      pastel = Pastel.new
      puts "#{pastel.cyan(SymfonyRegenerateSecretKey::NAME)} by #{pastel.blue(SymfonyRegenerateSecretKey::AUTHOR)}"
      puts "(c) #{SymfonyRegenerateSecretKey::YEAR}"
      puts "Version #{pastel.bright_blue(SymfonyRegenerateSecretKey::VERSION)}"
      puts "Available under the #{pastel.green(SymfonyRegenerateSecretKey::LICENSE)}."
    end
  end
end
