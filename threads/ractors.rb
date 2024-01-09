require 'net/http'

pages = %w( google.com yandex.ru)
ractors = []

for page_url in pages

  #net = Net::HTTP.new(page_url, 80)

  ractors << Ractor.new(page_url) do |url|

    puts "Fetching: #{url}"

    sleep(10)

  end

end

ractors.each do |r|
  r.take
end

puts "END"

