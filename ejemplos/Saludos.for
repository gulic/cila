* Ejemplo 2 de Fortran para CILA
* Fichero: saludos.for

      Subroutine saluda(mensaje)
      character(10) mensaje

      print 5, 'Hola ', mensaje

 5    format (//,2x,a,a,/)

      return
      end
