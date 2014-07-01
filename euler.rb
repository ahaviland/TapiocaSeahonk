=begin
I've posted some slightly general versions of project euler problems here. I've tried to preserve
formatting, but since I've never used Github before I'm pasting my methods in through my browser
in the interest of spending my time practicing Ruby and not Github, so indentation might be slightly wonky.


I think I could make these first 2 problems truely general with Inject and the Splat Operator, but I'm not 
quite there yet.
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
