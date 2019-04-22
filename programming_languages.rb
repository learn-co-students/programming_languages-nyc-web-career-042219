require "pry"
# def reformat_languages(languages)
#   new_hash = Hash.new
#     languages.each do |style, language|
#       language.each do |language_data, data|
#         data.each do |types, values|
#           new_hash[language] = {:type => values, :style => [style]}
#           binding.pry
#       end
#     end
#   end
#   return new_hash
# end

def reformat_languages(languages)
  new_hash = Hash.new
  languages.each do |style, style_data|
    style_data.each do |language, language_data|
      if new_hash[language]
        new_hash[language][:style] << style
      else
        new_hash[language] = language_data
        new_hash[language][:style] = [style]
      end
    end
  end
  new_hash
end
