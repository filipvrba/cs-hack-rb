module CSH
  module Clipboard
    module_function

    def set(text)
      system("termux-clipboard-set #{text}")
    end
  end
end
