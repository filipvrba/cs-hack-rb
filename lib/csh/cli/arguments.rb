module CSH
  module CLI
    module Arguments
      @options = {
        translate: nil,
        clipboard: false,
      }

      OptionParser.parse do |parser|
        parser.banner("\n" +
          "Facilitation of the Czech language in writing basic letters.\n\n" +
          "Usage: #{APP_NAME} [options]\n" +
          "\nOptions:"
        )

        parser.on( "-h", "--help", "Show help" ) do
          puts parser
          exit
        end
        parser.on( "-v", "--version", "Show version" ) do
          Core::Event.print('version', CSH::VERSION)
          exit
        end
        
        parser.on('-t TEXT', '--translate TEXT',
                  'Translate encrypted text.') do |text|
          @options[:translate] = text
        end
        parser.on('-cb', '--clipboard', 'Copies the translated text to the clipboard.') do
          @options[:clipboard] = true
        end
      end

      module_function

      def options
        @options
      end
    end#Arguments
  end
end
