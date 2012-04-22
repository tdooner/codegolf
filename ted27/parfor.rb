require 'json'
i={}.tap{|r|open($*[0]).each{|x|y=x.split" :";r[y.shift]=y.join.downcase.gsub(/[\/\(\)\.,;]/,"").gsub("[:\-\?!]"," ")}}
while 1;print'>';$>.flush;q=STDIN.gets;print JSON.dump(i.map{|j,r|p=q.split;j if p.inject(1){|a,s|a&&r[s]}}.compact)end
