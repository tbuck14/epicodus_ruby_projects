def title_case(title)
  t = title.split 
  (t.map() {|wrd| wrd.capitalize!}).join(" ")
end