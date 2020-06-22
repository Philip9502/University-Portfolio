#!/usr/bin/python3
import hashlib
import time
import itertools
Alphabet = ("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890-_.")
#alphbet defines the list of characters to use when cracking

#hidden password hash harcoded but the desirewd hash can easily be copied in to replace it
passwordHash = "BA7816BF8F01CFEA414140DE5DAE2223B00361A396177A9CB410FF61F20015AD"

start = time.time()

counter = 1
CharLength = 1

for CharLength in range(10):
    #this cahrtacter lenght is the max, although hardcoded can be changed if need be
    passwords = (itertools.product(Alphabet, repeat = CharLength))
    hashedpassword = hashlib.sha256(passwordHash.encode('utf-8')).hexdigest()
    #The Following section of code relates to the outputs of the script as it is cracking
    
    print("\n")
    print("Attempting to crack passwords with ", CharLength, " chars")
    print("Time taken..: ", time.time() - start, " seconds!")
    
    
    #This next section of code is the actual brutforcing of character combinations
    #It was created by refrencing  Pancake Hax in CircuitsSoftware "Password Brute-forcer in Python" https://www.instructables.com/id/Password-Brute-forcer-in-Python/
    
    
    for i in passwords:
        counter += 1
        i = str(i)
        i = i.replace("[", "")
        i = i.replace("a-z", "")
        i = i.replace("]", "")
        i = i.replace("A-Z", "")
        i = i.replace("'", "")
        i = i.replace("1-9", "")
        i = i.replace(",", "")
        i = i.replace("(", "")
        i = i.replace(")", "")
        if i == passwordHash:
            end = time.time()
            timetaken = end - start
            
            
            
            
            print("CRACKED ", timetaken, " seconds and ", counter, "attempts")

            print("THAT TOOK ", counter / timetaken, " attempts per second!")
            print(i)
            exit()