# require "pry"

def reformat_languages(languages)
  new_hash = {}

  languages.each do |style, language|
    language.each do |name, value|
      new_hash[name] ||= value
      new_hash[name][:style] ||= []
      new_hash[name][:style] << style
      # binding.pry
    end
  end
  return new_hash
end
