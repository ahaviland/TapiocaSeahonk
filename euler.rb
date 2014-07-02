=begin
I've posted some slightly general versions of project euler problems here. I've tried to preserve
formatting, but since I've never used Github before I'm pasting my methods in through my browser
in the interest of spending my time practicing Ruby and not Github, so indentation might be slightly wonky.


I think I could make these first 2 problems truly general with Inject and the Splat Operator, but I'm not 
quite there yet. I've tried to resist the urge to impliment methods I've read about but don't really understand.
=end


def three_or_five_mults (bottom, top, first_divisor, second_divisor)  # sums numbers divisible by either
  nums=[]                                                             # of two numbers within a given range
  sum=0                                                               
    for num in bottom...top
      if num % first_divisor == 0 || num % second_divisor == 0
        nums << num
      end	
    end

  nums.each do |mult|
    sum+=mult
  end

return sum

end

################################################################################

def even_fib_below(cap)                                                   # Sums even numbers in the fibonacci
	i=1								  # sequence below a given cap. Had a 
	fibs=[0]							  # surprisingly tough time with this one.
	while i<(cap)							  # I was prepared to leave it broken as
		prev=fibs.last						  # a demonstration of honesty when I realized
		fibs << i						  # I had just been doubling i instead of 
		i+=prev							  # properly going through the fibonacci
									  # sequence. Fixed now.
	end
	fibs.delete_if {|x| x % 2 !=0}
	total = 0
	for x in fibs
		total+=x
	end
	total
end

#################################################################################
                                                                  # Finds the largest prime factor of an input.
                                                                  #
def is_prime possible_prime                                       # I had to define a seperate method for checking if
  for i in 3..(possible_prime/2)                                  # a number is prime first, although I bet
    if possible_prime % i == 0                                    # there's a way to do this entire thing
      return false                                                # inside a single method.
    end                                                           # This problem was pretty similar to some of
  end                                                             # the AppAcademy sample questions, but I was able
  return true                                                     # to improve a tiny (unnoticable at this scale) bit
end                                                               # over the given solution by not bothering to 
		                                                  # check for factors which would
		                                                  # need to be multiplied by less than 2 to return
	                                                          # the target number.
def largest_prime_factor num
	prime_factors=[]
	for i in 1...num
		if is_prime(i) == true && num % i == 0
			prime_factors << i
		end
	end
	prime_factors.pop
end

###############################################################################

def largest_palindrome_product(digits)                                      # Finds the largest palindrome number
  lower = "1" + ("0" * digits)                                              # equal to 2 factors of a given length
  upper = ("9" * digits)						    # 
  lowest_factor = lower.to_i/10						    # I think the way I defined the ranges to
  highest_factor = upper.to_i						    # look in is kind of wonky, but I couldn't
  lowest_product = lowest_factor ** 2					    # think of a better way to do it.
  highest_product = highest_factor ** 2
  palindromes_in_range=[]
  for i in lowest_product..highest_product
  	if i.to_s == i.to_s.reverse
  		palindromes_in_range << i
  		
  	end
  end
  palindromes_in_range.reverse!
  for pal in palindromes_in_range
  	for i in lowest_factor..highest_factor
  		if pal % i == 0 && (pal/i).to_s.length == digits
  			return pal
  			
  		end
  	end
  end
end

##############################################################
