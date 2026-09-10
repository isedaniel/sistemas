program burbujagoto
  ! aviso al compilador que declaro variables de forma explícita
  ! sino toma la primera letra de la variable para el tipo
  implicit none

  integer :: i, j, temp

  integer, parameter :: n = 10
  integer :: arr(n) = [25, 100 , 67, 12, 18, 56, 14, 8, 2 , 22]

  print *, 'Original: ', arr

  i = 0
  100 continue
  i = i + 1
  if (i == n - 1) then
    goto 200
  end if

  j = 0
  300 continue
  j = j + 1

  if (arr(j) > arr(j+1)) then
    temp = arr(j)
    arr(j) = arr(j+1)
    arr(j+1) = temp
  end if 

  if (j == n - i) then 
    goto 100
  end if
  goto 300

  200 continue
  print *, 'Ordenado: ', arr
  
end program burbujagoto
