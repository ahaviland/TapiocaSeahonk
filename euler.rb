def even_fib_below cap                         
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