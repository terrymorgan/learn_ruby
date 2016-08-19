#write your code here
def add x,y
	x+y 
end

def subtract x,y
	x-y
end

def sum array
	sum = 0
	array.each do |x|
		sum = sum + x 
	end
	sum
end

def multiply array
	return nil if array.length <= 1
	string = "1"
	array.each do |x|
		string = string + "*" + x.to_s
	end
	eval string
end

def power x,y
	x**y
end

def factorial x
	return 1 if x == 0
	string = "1"
	while x > 1
		string = string + "*" + x.to_s
		x = x - 1
	end	
	eval string
end