require 'net/http'

pages = %w(google.com yandex.ru)
threads = []

for page_to_fetch in pages

  threads << Thread.new(page_to_fetch) do |url|

    h = Net::HTTP.new(url, 80)
    puts "Fetching: #{url}"
    resp = h.get('/', nil )
    puts "Got #{url}: #{resp.message}"

    sleep(10)

  end

end

threads.each do |thr|
  thr.join
end

puts "END"

