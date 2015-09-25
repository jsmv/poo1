  /*
  Esta función le solicita al usuario un valor numérico fue retomada de https://processing.org/discourse/beta/num_1265145827.html dónde fue escrita por TfGuy44
  
 String input = "";
 void keyPressed(){
  if( key >= '0' && key <= '9' ){
    input+=char(key);
    println( "El número presionado: " + char(key) );
    println( "El valor actual es: " + input );
    if( abs( int( input ) ) >= 1000 ){
      println( "El valor es muy grande" );
      input = input.substring(  0, input.length()-1 );
      println( "El valor actual es: " + input );    
    }
  } 
  
  else if( key == BACKSPACE && input.length() > 0 ){
    println( "El último número presionado será eliminado" );
    input = input.substring(  0, input.length()-1 );
    println( "El valor actual es: " + input );
  } 
  else if (key == RETURN || key == ENTER){
    int finalInput = int( input );
    println( "El valor buscado es: " + finalInput );
    input = "";
  }
}
*/
   /*
  Esta funcion retorna el n-esimo termino de la serie de PADOVAN
  */

  int enesimopado(int n){    
    if (n==0)
    return 1;
    if (n==1)
    return 1;
    if (n==2)
    return 1;
    if (n>2)
    return enesimopado(n-2) + enesimopado(n-3);
    //si n es negativo o 0
    return -1;
   }
   
 /* guardar los valores que tiene la serie en un
  arreglo llamado PADOVAN para imprimirlos y dibujar los triangulos */
  
  int[] padovan(int x){
   int[] PADOVAN= new int[x];
    for (int i=0;i<x;i++){
  PADOVAN[i]=enesimopado(i);
  
  
  for (int j=x-1;j>0;j--){
  float x0=width/2;
  float y0=height/2;
  float value = PADOVAN[j];
  float m = map(value, 0, PADOVAN[x-1] , 0 , 255);
  
  noStroke();// se puede quitar eta línea si se desea dejar los bordes de los triangulos
  
  //se puede jugar con el color teniendo en cuenta que m en los triangulos más pequeños 
  //correspondientes a los primeros valores de la serie va a tener un valor pequeño es decir que 
  //el color obtenido será obscuro y a medida que sean más grandes los valores (y triangulos)
  //alcansará el 255 correspondiente al color de su posición (red, green, blue)
  
  fill (0,m,0);//primer sextante
  triangle(x0,y0,x0+PADOVAN[j]*10,y0,x0+PADOVAN[j]*10/2,y0-sqrt(75)*PADOVAN[j]);
  fill (m,m,m);//segundo sextante
  triangle(x0,y0,x0+PADOVAN[j]*10/2,y0-sqrt(75)*PADOVAN[j],x0-PADOVAN[j]*10/2,y0-sqrt(75)*PADOVAN[j]);
  fill (0,m,0);//tercer sextante
  triangle(x0,y0,x0-PADOVAN[j]*10,y0,x0-PADOVAN[j]*10/2,y0-sqrt(75)*PADOVAN[j]);
  fill (0,0,m);//cuarto sextante
  triangle(x0,y0,x0-PADOVAN[j]*10,y0,x0-PADOVAN[j]*10/2,y0+sqrt(75)*PADOVAN[j]);
  fill (m,0,0);//quinto sextante
  triangle(x0,y0,x0+PADOVAN[j]*10/2,y0+sqrt(75)*PADOVAN[j],x0-PADOVAN[j]*10/2,y0+sqrt(75)*PADOVAN[j]);
  fill (0,0,m);//sexto sextante
  triangle(x0,y0,x0+PADOVAN[j]*10,y0,x0+PADOVAN[j]*10/2,y0+sqrt(75)*PADOVAN[j]); 
  }
  }
  printArray(PADOVAN);  
  

  return PADOVAN; 

  }
  //setup()
  void setup(){ 
 /* 
  println( "¿Cuál enésimo término de la serie de Padovan desea conocer?"  );
  como no pude lograr que los numeros ingresados por el usuario se usaran para reemplazar la n toca asgniarle un valor manualmente en las lineas siguientes
  */
  int n  =16;
padovan(n);
println("El término #" + n );
println("de la serie de Padovan es el " + enesimopado(n-1));
size(550,550);  //size(w,h) se puede cambiar el tamaño de la ventana si el monitor da para más


}
  