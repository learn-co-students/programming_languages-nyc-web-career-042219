def reformat_languages(languages)
  # your code here
   new_languages = {}
   languages.each do |type, language_hash|
     language_hash.each do |name, attributes|
       new_languages[name] ||= attributes
       new_languages[name][:style] ||= []
       new_languages[name][:style] << type
     end
   end
   new_languages
 end
