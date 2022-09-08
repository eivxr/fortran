       program beca
       implicit none
       integer edad
       real promedio
       print *
       write(*,*) 'introduczca su edad: '
       print*
       read(*,*) edad
       print *
       write(*,*)'introduzca su promedio: '
       print *
       read(*,*) promedio
       if (edad < 18) then
                if(promedio >= 9) then
                   write(*,*) 'su beca es de $2000'
                else if (promedio < 9 .AND. promedio >= 7.5 ) then
                     write(*,*) 'su beca es de $1000'
                else if(promedio < 7.5 .AND. promedio >= 6) then
                     write (*,*) 'su beca es de $500'
                else if (promedio <6) then
                     write(*,*) 'no es apto para el programa'
                endif
       endif
       pause
       end program beca
