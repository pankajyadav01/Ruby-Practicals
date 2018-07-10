obj=Object.new
if obj.respond_to?("talk")
	obj.talk
else
	puts "Sorry this messg is INVALID"
end