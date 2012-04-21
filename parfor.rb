require'json'
def z(s)s.downcase.gsub(/[\/\(\):\.,;]/,"").gsub("[\-\?!]"," ")end
def s(i,qu)i.map{|j,r|p=qu.split(" ");j if p.inject(true){|a,q|a&&r.any?{|w|w.include?(q)}}}.compact;end
i={}.tap{|r|File.new($*[0]).readlines.each{|x|y=x.split(" : ");r[y[0]]=z(y[1..-1].join(" ")).split(" ")}}
while true;print'>';STDOUT.flush;q=STDIN.gets;print JSON.generate(s(i,q));end
