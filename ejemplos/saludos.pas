{ Ejemplo 2 de Pascal para CILA }
{    Fichero: saludos.pas       }

Unit Saludos ;

Interface

Procedure Saluda ( mensaje : string ) ;

Implementation

Procedure Saluda ( mensaje : string ) ;
Begin
  writeln('Hola ', mensaje);
End;

Begin
End.
