require 'option_parser'

require 'csh/version'
require 'csh/translate'
require 'csh/states'

require 'csh/cli/arguments'

module CSH
  @options_cli = CLI::Arguments.options

  module_function

  def main
    States.translate(@options_cli[:translate])
  end
end
