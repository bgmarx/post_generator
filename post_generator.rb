post = []
ARGV.each do |arg|
  post << arg
end
post_title = post[0].nil? ? "placeholder" : post[0].strip
post_slug_title = post_title == "placeholder" ? post_title : post_title.split(" ").join("-")
post_date  = post[1].nil? ? Time.now.to_s.split(" ") : post[1]
post_file  = "./_posts/#{post_date[0]}-#{post_slug_title}.md"

File.open(post_file, 'w') do |f|
  f.write(
"---
layout: post
title:  #{post_title}
date:   #{post_date[0]} #{post_date[1]}
---"
  )
end
