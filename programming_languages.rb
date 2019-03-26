def reformat_languages(languages)
  hash = {}
  languages.each do |style, language_data|
    language_data.each do |program_language, data|
      hash[program_language] = {style: [style]}
      hash[program_language][:style].unshift(:oo) if program_language == :javascript
      data.each do |type, value|
        hash[program_language][type] = value
      end
    end
  end
  hash
end