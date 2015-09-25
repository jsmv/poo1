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
    //avance de la recursion
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
  float x0=500/2;
  float y0=500/2;
  triangle(x0,y0,x0+PADOVAN[j]*10,y0,x0+PADOVAN[j]*10/2,y0-sqrt(75)*PADOVAN[j]);
  triangle(x0,y0,x0-PADOVAN[j]*10,y0,x0-PADOVAN[j]*10/2,y0-sqrt(75)*PADOVAN[j]);
  triangle(x0,y0,x0+PADOVAN[j]*10/2,y0-sqrt(75)*PADOVAN[j],x0-PADOVAN[j]*10/2,y0-sqrt(75)*PADOVAN[j]);
  triangle(x0,y0,x0+PADOVAN[j]*10,y0,x0+PADOVAN[j]*10/2,y0+sqrt(75)*PADOVAN[j]);
  triangle(x0,y0,x0-PADOVAN[j]*10,y0,x0-PADOVAN[j]*10/2,y0+sqrt(75)*PADOVAN[j]);
  triangle(x0,y0,x0+PADOVAN[j]*10/2,y0+sqrt(75)*PADOVAN[j],x0-PADOVAN[j]*10/2,y0+sqrt(75)*PADOVAN[j]);
  //triangle(x0,y0,x0+PADOVAN[j]*10,y0,(x0+5),y0-sqrt(75)*PADOVAN[j]);
  //triangle(x0,y0,(x0+PADOVAN[j]*10),y0,(x0+5),y0-sqrt(75)*PADOVAN[j]);
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
  int n  = 15;
padovan(n);
println("El término #" + n );
println("de la serie de Padovan es el " + enesimopado(n-1));
  size(500,500);  //size(w,h)


}
  