def even_fib_below cap               #finds even numbers in fibonacci sequence up to a given limit          
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
