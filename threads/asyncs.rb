require 'async'
require 'net/http'

Async do
  ["google.com", "yandex.ru"].each do |url|
    Async do
      puts "fetch #{url}"

      h = Net::HTTP.new(url, 80)

      resp = h.get('/', nil )
      puts "Got #{url}: #{resp.message}"
    end
  end
end

puts "END"