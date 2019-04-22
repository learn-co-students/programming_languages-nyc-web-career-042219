def reformat_languages(languages)
  # your code here
  new_langauge = {}
  languages.each do |style, language_hash|
    language_hash.each do |language, style_hash|
      if new_langauge.has_key?(language)
        new_langauge[language][:style] << style
      else
        new_langauge[language] = style_hash
        style_array = []
        style_array << style
        new_langauge[language][:style] = style_array
        end
        end
      end
      new_langauge
end
