seq -s" " 0x1F345 0x1F353 | xargs -I@ ruby -e '%w(@).each{|m| print m.to_i.chr("UTF-8")}'

# 🍅🍆🍇🍈🍉🍊🍋🍌🍍🍎🍏🍐🍑🍒🍓
