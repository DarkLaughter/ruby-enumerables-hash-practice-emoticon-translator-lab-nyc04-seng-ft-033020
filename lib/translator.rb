require "yaml"


def load_library(file_path)
  emoticons = YAML.load_file(file_path)

    emo_hash = {
      'get_meaning' => {},
      'get_emoticon' => {}
    }

    emoticons.each do |name, symbols|
      emo_hash[:get_meaning][symbols[1]] = name
      emo_hash[:get_emoticon][symbols[0]] = emoticons[name[1]]
    end

  emo_hash
end

def get_japanese_emoticon(file_path, emoticon)
emoticon_hash = load_library(file_path)

  if emoticon_hash[:get_emoticon][emoticon] == nil
    return
end

def get_english_meaning
  # code goes here
end
