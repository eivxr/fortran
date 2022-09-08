       program poliza
       implicit none
       integer tipo, edad, bebe, lentes, enfermo
       real costo, costoa
       

       write(*,*)'Tipo de poliza a = 1 b = 2'
       read(*, *) tipo

       write(*,*)'La persona bebe 1 = Si 0 = No'
       read(*, *)bebe

       write(*,*)'la persona usa lentes 1 = Si 0 = No'
       read(*, *) lentes

       write(*,*)'la persona cuenta con alguna enfermedad 1 = si 0 = no'
       read(*, *) enfermo

       write(*,*)'Introduzca su edad '
       read(*, *) edad
       
       select case (tipo)
              case (1)
                   costo =1200
              case (2)
                   costo = 950
       end select
       
       select case(bebe)
              case (1)
                    costoa = costo + (costo * 0.10)
              case (0)
                   costoa = costo
       end select
       
       select case (lentes)
              case (1)
                   costoa = costoa + (costo * 0.05)
              case (0)
                   costoa = costoa
       end select
       
       select case (enfermo)
              case (1)
                   costoa = costoa + (costo * 0.05)
       end select
       
       if (edad > 40) then
          costoa = costoa  + (costo * 0.2)
       else
           costoa = costoa + (costo * 0.1)
       endif
       
       write (*,*) costoa
       
       pause
       
       end program poliza
       
