require 'json'
def clean(s) s.downcase.gsub("/","").gsub("(","").gsub(")","").gsub(":","").gsub(".","").gsub(",","").gsub(";","").gsub("?"," ?").gsub("!"," !").gsub("-"," -") end
def search_index(i, query)
    i.map{|id,review|
        id if query.split(" ").inject(true){|a,q| a&&review.any?{|w| w.include?(q)}}
    }.compact
end
r = {}.tap{|r| File.new(ARGV[0]).readlines.each{|x| y = x.split(" : "); r[y[0]] = clean(y[1..-1].join(" ")).split(" ");}}
while true
    print '>'
    $stdout.flush
    query = $stdin.gets
    print JSON.generate(search_index(r, query))
end
