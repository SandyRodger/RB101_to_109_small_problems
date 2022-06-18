# You are given a method named spin_me that takes a string as an argument and returns a string that contains the same words, 
# but with each word's characters reversed. Given the method's implementation, 
# will the returned string be the same object as the one passed in as an argument or a different object?


def spin_me(str)
	p "line 7 is #{str.object_id}"  # => 70151890736660
  str.split.each do |word|
		p "line 9 is #{word.object_id}" # => 770151890736360 / 70151890736340 (these change every time)
    word.reverse!
  end.join(" ")
end

 p "line 14 is #{spin_me("hello world").object_id}"  # "olleh dlrow" => 70151890735980

# I think yes. Let me test. Test indicates no.