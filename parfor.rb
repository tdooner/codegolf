require'json'
i={}.tap{|r|File.new($*[0]).readlines.each{|x|y=x.split(" : ");r[y[0]]=y[1..-1].join(" ").downcase.gsub(/[\/\(\):\.,;]/,"").gsub("[\-\?!]"," ")}}
while true;print'>';STDOUT.flush;q=STDIN.gets;print JSON.generate(i.map{|j,r|p=q.split;j if p.inject(true){|a,s|a&&r.include?(s)}}.compact)end
