require "pry"
require "yaml"

file = './lib/emoticons.yml'

def load_library(file)
  hash = YAML.load_file(file)
  new_hash = {get_meaning: {}, get_emoticon: {}}
  hash.each {|key, value|
    key1 = key
    value.each {|element|
      if element.index == 0 
        new_hash[:get_emoticon][element] = value[1]
      elsif element.index == 1 
        new_hash[:get_meaning][element] = key1
      end
    }
  }
  new_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

puts load_library(file)