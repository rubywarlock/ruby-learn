ext = "EXT DATA"

def m
  ext2 = "sub EXT"

  l = -> (arg) do
    puts arg

    begin
      puts ext2 # ident
      puts ext # NOT indent
    rescue Exception => e
      puts "EXT ERROR: #{e.message}"
    end

    puts "AFTER ERROR"

    return true
  end

  puts "before"

  r = l.call("Cool")

  puts "#{r}"

  puts "after M"
end

m