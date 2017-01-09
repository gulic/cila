// saludo.h .- Ejemplo de programa en C++.
//              Declaración de la clase saludo.

class saludo
{
public:
  saludo (const char *str);
   ~saludo ();

  void print (void);

private:
  const char *msg;
};
