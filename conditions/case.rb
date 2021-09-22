
def conds(word, cond)
  case word
  when 1
    return "FIRST" if cond == true
    "SECOND"
  when 2
    return "THIRD" if cond == true
    "FOUR"
  end
end

#result = conds(2, true)
#puts result

def few_conds(v, v2)
  case v
  when 1, 2, 3 && v2 == true
    puts "1, 2, 3"
  when 4, 5, 6 && v2 == false
    puts "4, 5, 6 "
  end
end

few_conds(4, false)