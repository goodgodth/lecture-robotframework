count = 0
while (count < 9):
   print 'The count is:', count
   count = count + 1

print "Good bye!"



for letter in 'Python':     # First Example
   print 'Current Letter :', letter

fruits = ['banana', 'apple',  'mango']
for fruit in fruits:        # Second Example
   print 'Current fruit :', fruit

print "Good bye!"



i = 2
while(i < 100):
   j = 2
   while(j <= (i/j)):
      if not(i%j): break
      j = j + 1
   if (j > i/j) : print i, " is prime"
   i = i + 1

print "Good bye!"




for letter in 'Python':  # First Example
    if letter == 'h':
        break
    print 'Current Letter :', letter

var = 10  # Second Example
while var > 0:
    print 'Current variable value :', var
    var = var - 1
    if var == 5:
        break

print "Good bye!"



for letter in 'Python':     # First Example
   if letter == 'h':
      continue
   print 'Current Letter :', letter

var = 10                    # Second Example
while var > 0:
   var = var -1
   if var == 5:
      continue
   print 'Current variable value :', var
print "Good bye!"




for letter in 'Python':
   if letter == 'h':
      pass
      print 'This is pass block'
   print 'Current Letter :', letter

print "Good bye!"