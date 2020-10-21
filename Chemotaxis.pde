
 //declare bacteria variables here
 Bacteria[] bob = new Bacteria[50];
 Food[] foods = {new Food((int)(Math.random()*500),(int)(Math.random()*500)), new Food((int)(Math.random()*500),(int)(Math.random()*500))};
 void setup()   
 {     
   //initialize bacteria variables here
   size(500,500);
   for(int i=0; i<bob.length; i++){
     bob[i] = new Bacteria();
   }
   
 }   
 void draw()   
 {    
   //move and show the bacteria
   background(50,168,151);
   for(int n=0; n<bob.length; n++){
     bob[n].show();
     bob[n].move();
   }
   foods[0].show();
   foods[1].show();
   
 }  
 class Bacteria    
 {     
   //lots of java!
   int myX, myY, colour;
   Bacteria(){
     myX = (int)(Math.random()*500);
     myY = (int)(Math.random()*500);
     colour = color(180,170, 200);
   }
   
   void move(){
     int whichFood = 0;
     if(dist(myX,myY,foods[0].myX,foods[0].myY) > dist(myX,myY,foods[1].myX,foods[1].myY)){
       whichFood=1;
     }
     if(foods[whichFood].myX > myX){
       myX = myX + (int)(Math.random()*5)-1;
     } else{
       myX = myX + (int)(Math.random()*5)-3;
     }
     if(foods[whichFood].myY > myY){
       myY = myY + (int)(Math.random()*5)-1;
     } else{
       myY = myY + (int)(Math.random()*5)-3;
     }
     
   }
   
   void show(){
     fill(50,168,82);
     ellipse(myX,myY,20,20);
   }
 }
 
 class Food{
   
   int myX, myY, colour;
   Food(int x, int y){
     myX = x;
     myY = y;
   }
   
   void show(){
     fill(235, 143, 52);
     rect(myX,myY,50,50);
   }
   
 }
