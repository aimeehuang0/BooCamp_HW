int step = 0;
int w = 50, h = 30;
int x1,x2,y1,y2,choice=0;
boolean showError=false;

void setup(){
  background(0);
  fill(0);
  size(250,250);
  
    textAlign(CENTER);
    fill(255);
    text("Welcome to the cave!", 10, 10, 240, 80);
    text("Do you go in?", 10, 70, 240, 80);
    
    rectMode(CENTER);
    fill(0);
    stroke(255);
    rect(width/2-w,height/2,w,h);
    fill(255);
    text("YES",width/2-w,height/2);
    
    fill(0);
    rect(width/2+w,height/2,w,h);
    fill(255);
    text("No",width/2+w,height/2);

}

void draw(){
    //println(mouseX+" "+mouseY);
    /*if (mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2 && mousePressed) {
      changeButton = true;
    } else {
      changeButton = false;
    }*/
      if ( step == 1 && choice == 1){
        background(0);
        fill(0);
        size(250,250);
      
        textAlign(CENTER);
        rectMode(CORNER);
        fill(255);
        text("You went in, watch for bears!", 10, 10, 240, 80);
        text("Do you take the right fork or the left?", 10, 70, 240, 80);
        
        rectMode(CENTER);
        fill(0);
        stroke(255);
        rect(width/2-w,height/2,w,h);
        fill(255);
        text("Right",width/2-w,height/2);
        
        fill(0);
        rect(width/2+w,height/2,w,h);
        fill(255);
        text("Left",width/2+w,height/2);
    }
    else if(step == 1 && choice == 2)
    {
        background(0);
        fill(0);
        size(250,250);
      
        textAlign(CENTER);
        rectMode(CORNER);
        fill(255);
        text("You didn't go in, watch for Pirates!!", 10, 10, 240, 80);  
    }
    
    if(step!=0)
    {
        textAlign(LEFT);
        fill(255);
        text("<Return",200,230);
    }
}

void mouseClicked(){
  showError = false;
  if(mouseX > width/2-w*3/2 && mouseX < width/2-w/2 && mouseY > height/2-h/2 && mouseY < height/2+h/2)
  {
     println("wee");
     step=1;
     choice=1;
     redraw();
  }
  else if (mouseX > width/2+w/2 && mouseX < width/2+w*3/2 && mouseY > height/2-h/2 && mouseY < height/2+h/2)
  {
       println("booh");
       step=1;
       choice=2;
       redraw();
  }
  else if (mouseX > 200 && mouseX < 250 && mouseY > 220 && mouseY < 230)
  {
       
       //step-=1;
       println("back" +" " +step);
       redraw();
  }
  else
  {
       //showError = true;
       x1=width/2+w*3/2; //50 110 - 150 110
       x2=width/2+w/2; //100 115 - 200 110
       y1=height/2-h/2; // 50 140 - 150 140
       y2=height/2+h/2; //100 140 - 200 140
       println("bleh"+" "+x1+" "+x2+" "+y1+" "+y2);
  }
  /*
  }else if ( key == '2' && step == 0){
    step = 1;
    println("You didn't go in, watch for Pirates!");
  }else if (key == 'l' && step == 1){
     println(" ");
     println("WTF! It's a Mummy!");
     println(" ");
     println("Do you fight or the run?");
     println("Press 3 to fight, 4 to run");
     step = 2;
  }else if (key == 'r'&& step == 1){
     println(" ");
     println("WTF! It's a bear!");
     println(" ");
     println("Do you fight or the run?");
     println("Press x to fight, o to run");
     step = 2;
  }else if (key == '3' && step == 2){
     println(" ");
     println("The mummy is already dead, as most mummies are.");
     println("You are arrested for defiling a corpse.");
  }else if (key == '4' && step == 2){
     println(" ");
     println("You ran to the next chamber and found gold!");
     println("You win!");
  }else if (key == 'x' && step == 2){
     println(" ");
     println("The bear is stronger.");
     println("You die.");
  }else if (key == 'o' && step == 2){
     println(" ");
     println("Smart choice!");
     println("You come to a fork in the path.");
     println("Press c to continue, press e to exit the cave.");
     step =3;
  }else if (key == 'c' && step == 3){
     println(" ");
     println("WTF! It's a Mummy!");
     println(" ");
     println("Do you fight or the run?");
     println("Press 3 to fight, 4 to run");
     step = 2;
  }else if ( key == 'e' && step == 3){
    step = 1;
    println("You have left the cave, watch for Pirates!");
  }else{
    println("That's not an option. Try again.");
    }*/
 }
  