module CSH
  module States
    module_function

    def translate(text)
      if text
        decipher_text = Translate.decipher(text)
        puts decipher_text.gsub(/\\n/, "\n")
      end
    end
  end
end
