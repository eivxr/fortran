        program tienda
        implicit none
        
        integer cant, i, cantidad
        real precio, totalp, total
        character (80) nombre
        total = 0
        write(*,*) 'ingrese la cantidad de productos'
        read(*,*)cantidad
        i = 0
        
        do while(i<cantidad)
        write(*,*) 'nombre del producto: '
        read(*,*) nombre
        write(*,*) 'cantidad de productos: '
        read(*,*) cant
        write(*,*) 'precio de producto: '
        read(*,*) precio
        totalp = precio + cant

        if(totalp > 1000) then
        totalp = totalp - (totalp * .15)
        endif
        total = total + totalp
        
        i = i+1
        end do
        
        write(*,*) 'total : '
        write(*,*) total
        pause
        
        end program tienda
