require "pry"
require "yaml"

file = './lib/emoticons.yml'

def load_library(file)
  hash = YAML.load_file(file)
  hash.each {|key, value|
    binding.pry
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

load_library(file)