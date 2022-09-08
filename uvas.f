        program uvas
        implicit none
        Integer tipoUva, tamanoUva
        real costoTotal,costoKg, cantidadKg


        print *
        write(*,*) 'precio por kilogramo'
        print *
        read(*, *) costoKg
        print *
        write(*,*) 'tipo de uva 1 = A o 2 = B'
        print *
        read(*, *) tipoUva
        print *
        write(*,*) 'tama¤o de uva 1 o 2'
        print *
        read(*, *) tamanoUva

        select case (tipoUva)
               case (1)
                    select case (tamanoUva)
                           case (1)
                                costoKg=costoKg+0.2
                           case (2)
                                costoKg=costoKg+0.3
                    end select
               case (2)
                    select case (tamanoUva)
                           case (1)
                                costoKg=costoKg-0.3
                           case (2)
                                costoKg=costoKg-0.5
                    end select
         end select
         print *
         write(*,*) 'Numero de kilos'
         print *
         read(*, *) cantidadKg
         costoTotal=costoKg*cantidadKg
         write(*,*) costoTotal
         pause
         end program uvas
