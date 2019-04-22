def reformat_languages(languages)
  new_hash = {}
  languages.each do |key1, value1|
    value1.each do |key2, value2|
      new_hash[key2] = value2
      new_hash[key2].merge!(style: [key1])
    end
  end
  new_hash.each do |key1, value1|
    value1.each do |key2, value2|
      if key1 == :javascript
        if key2 == :style
          value2 << (:oo)
        end
      end
    end
  end
end
