module CSH
  module Clipboard
    module_function

    def set(text)
      os = RUBY_PLATFORM

      if os.index('android')
        return system("termux-clipboard-set #{text}")
      end

      print_warning()
      return false
    end

    def print_warning()
      Core::Event.print('warning', "The OS has not been indedified\n" +
                        "for the clipboard function.")
    end
  end
end
