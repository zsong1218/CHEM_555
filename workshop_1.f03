program workshop_1

use mqc_gaussian

implicit none

real::m,b,l,E
integer:: n

print *, 'enter quantum number'
read (*,*) n

m = 2
b = 3
l = 4
E = n^2*L^2/2/m/l/l+b*L/2

print *, 'The potential energy is ', E

end program workshop_1


