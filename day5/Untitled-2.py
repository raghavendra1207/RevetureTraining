def winGame(num):
   
    # Count the number of trailing zeros in the factorial of num
    count = 0
    power_of_five = 5
    while num >= power_of_five:
        count += num // power_of_five
        power_of_five *= 5
    
    return count
    
print(winGame(10))

