// saludo.h .- Ejemplo 5 para el CILA 2001

class saludo
{
public:
  saludo (const char *str);
   ~saludo ();

  void print (void);

private:
  const char *msg;
};
