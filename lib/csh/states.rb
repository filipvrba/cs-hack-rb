module CSH
  module States
    module_function

    def translate(options)
      text         = options[:translate]
      is_clipboard = options[:clipboard]

      if text
        decipher_text = Translate.decipher(text)

        puts
        puts decipher_text.gsub(/\\n/, "\n")

        if is_clipboard
          is_done_cb = Clipboard.set(decipher_text)
          if is_done_cb
            Core::Event.print("clipboard", "The text has been copied.")
          end
        end
      end
    end
  end
end
