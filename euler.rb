def even_fib_below cap                            #finds even numbers in fibonacci sequence up to a given limit          
	i=1                                     
	evens=[]                                
	while i <= cap                           
		if i % 2 ==0                     
			evens << i             
			
		end                             
		i+=i                            
	end                                    
	return [evens]                             
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

p three_or_five_mults(1000)
