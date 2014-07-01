def even_fib_below cap                            # sums even numbers in the fibonacci sequence below a given cap
	i=1                                       # (answers seem to come up a little short. Haven't had a good 
	sum=0                                     # look at WHY yet.)
	evens = []
	while i<cap
		if i % 2 == 0
			evens << i
		end
		i+=i		
	end
	evens.each do |even_fib|
		sum += even_fib
	end
	sum
end

##############################################################

def three_or_five_mults cap                        #sums all multiples of 3 or 5 below 1000
	nums=[]
	sum=0
	for num in 1...1000
		if num % 3 == 0 || num % 5 == 0
			nums << num
		end	
	end

  nums.each do |mult|
    sum+=mult
  end

return sum

end
