module CSH
  module Translate
    DEC_LETTER = {
      "e\'": 'ě',
      "s\'": 'š',
      "c\'": 'č',
      "t\'": 'ť',
      "r\'": 'ř',
      "z\'": 'ž',

      "yy": 'ý',
      "aa": 'á',
      "ii": 'í',
      "ee": 'é',
      "oo": 'ó',
      "uu": ['ú', 'ů'],
    }

    module_function

    def decipher(text)
      m_result = text

      l_mut_result = lambda do |k, v, r=''|
        r_down = "#{r}#{k}"
        r_up   = "#{r}#{k.upcase}"
        m_result = m_result.gsub(/#{r_down}/, v)
        m_result = m_result.gsub(/#{r_up}/, v.upcase)
      end
      la_mut_result = lambda do |k, v|
        l_mut_result.call(k, " #{v[0]}", "(\s)")
        l_mut_result.call(k, v[0], "(^)")
        l_mut_result.call(k, v[1])
      end

      DEC_LETTER.each do |k, v|
        if v.is_a?(Array)
          la_mut_result.call(k, v)
        else
          l_mut_result.call(k, v)
        end
      end

      m_result
    end
  end#Translate
end
