require "pry"

def reformat_languages(languages)
  new_hash = {}
  languages.each do |key, langs|
  	# binding.pry
  	langs.each do |l, v|
  		v.each do |type, str|
  		# binding.pry
  			if !new_hash[l]
  				new_hash[l] = {}
  				# binding.pry
  			end
  				# binding.pry
  				new_hash[l][:type] = str
  				# binding.pry
  				if !new_hash[l][:style]
  					new_hash[l][:style] = []
  					new_hash[l][:style] << key
  				else 
  					new_hash[l][:style] << key
  					# binding.pry
  				end
  		end
  	end
 end
 new_hash
 # binding.pry
end

languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}

reformat_languages(languages)

