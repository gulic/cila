{ Ejemplo 2 de Pascal para CILA }
{    Fichero: HolaMundo2.pas    }

Program HolaMundo2;
Uses
  Crt, Saludos ;
Var
  nombre : string ;
Begin
  TextColor(13) ;
  write ('¿Cómo te llamas? ') ;
  TextColor(15) ;
  readln (nombre) ;
  TextColor(14) ;
  Saluda (nombre) ;
  TextColor(7) ;
End.
