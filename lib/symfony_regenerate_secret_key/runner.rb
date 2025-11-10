# frozen_string_literal: true

require 'pastel'
require 'tty-exit'
require 'tty-option'
require_relative 'meta'
require_relative 'self_actions'

module SymfonyRegenerateSecretKey
  # Command line interface for this gem.
  class Runner
    include TTY::Exit
    include TTY::Option

    # Define command line information flag
    flag :info do
      short '-i'
      long '--info'
      desc 'Show gem information'
    end

    # Define command line version flag
    flag :version do
      short '-v'
      long '--version'
      desc 'Show the version of the current installation'
    end

    # Define command line license flag
    flag :license do
      short '-l'
      long '--license'
      desc 'Show license information'
    end

    # Define command line help flag
    flag :help do
      short '-h'
      long '--help'
      desc 'Print help text'
    end

    # Set help text headers and footer
    usage do
      pastel = Pastel.new
      program pastel.blue(SymfonyRegenerateSecretKey::SLUG).to_s
      no_command
      header pastel.cyan(SymfonyRegenerateSecretKey::NAME).to_s
      header SymfonyRegenerateSecretKey::DESCRIPTION.to_s
      footer "Available under the #{pastel.green(SymfonyRegenerateSecretKey::LICENSE)} by #{pastel.blue(SymfonyRegenerateSecretKey::AUTHOR)}."
    end

    # Compile TTY::Option parameters into a single value
    def compiled_params
      p = false
      p = 'info' if params[:info]
      p = 'version' if params[:version]
      p = 'license' if params[:license]
      p = 'help' if params[:help]
      p
    end

    # Compile actions based on compiled parameters
    def run_actions
      case compiled_params
      when 'info' then SymfonyRegenerateSecretKey::SelfActions.info
      when 'version' then puts SymfonyRegenerateSecretKey::VERSION
      when 'license' then puts SymfonyRegenerateSecretKey::LICENSE
      when 'help' then puts help
      else
        puts SymfonyRegenerateSecretKey::Key.new
      end
    end

    # Run the command line interface
    def run
      if params.errors.any?
        exit_with(:usage_error, params.errors.summary)
      else
        run_actions
      end
    end
  end
end
