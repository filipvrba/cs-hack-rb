require 'option_parser'

require 'csh/version'
require 'csh/translate'
require 'csh/clipboard'
require 'csh/states'

require 'csh/core/event'
require 'csh/cli/arguments'

module CSH
  @options_cli = CLI::Arguments.options

  module_function

  def main
    States.translate(@options_cli)
  end
end
