 /*
  Esta funcion retorna el n-esimo termino de la serie de PADOVAN
  */

  int pado(int n){
      //salida de la recursion  
    
    if(n==1)
    return 1;
    if (n==2)
    return 1;
    if (n==0)
    return 1;
    //avance de la recursion
    if (n>2)
    return pado(n-2) + pado(n-3);
    //si n es negativo o 0
    return -1;
  }

  int[] padovan(int n){
   int[] PADOVAN= new int[n];
    for (int i=0;i<n;i++){
  PADOVAN[i]=pado(i);
  println(pado(i));
  }
  return PADOVAN;
  }
  
  /*guardar los valores que tiene la serie en un
  arreglo para imprimirlos y dibujar los triangulos*/
  void setup(){ //setup()
padovan(10);

  size(500,500);  //size(w,h)
  float x0=500/2;
  float y0=500/2;
  for (int i=0;i<10;i++)
{
  }

triangle(x0,y0,x0+10,y0,x0+5,y0-sqrt(75));
triangle(x0,y0,x0+10,y0,x0+5,y0+sqrt(75));
triangle(x0,y0,x0-5,y0+sqrt(75),x0+5,y0+sqrt(75));
triangle(x0-15,y0-sqrt(75),x0-5,y0+sqrt(75),x0+5,y0-sqrt(75));
triangle(x0-15,y0-sqrt(75),x0-5,y0-sqrt(75)-sqrt(300),x0+5,y0-sqrt(75));
triangle(x0+25,y0-sqrt(75)-sqrt(300),x0-5,y0-sqrt(75)-sqrt(300),x0+10,y0);



}
  