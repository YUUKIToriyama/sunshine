seq -s" " 0x1F345 0x1F353 | xargs -I@ ruby -e '%w(@).each do |moji|; print moji.to_i.chr("UTF-8"); end'

#🍅🍆🍇🍈🍉🍊🍋🍌🍍🍎🍏🍐🍑🍒🍓
