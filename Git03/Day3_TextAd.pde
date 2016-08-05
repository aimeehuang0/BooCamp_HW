int step = 0;
int w = 50, h = 30;
int x1,x2,y1,y2,choice=0,backChoice=0;
boolean showError=false,die=false,back=false,jump=false,fromN=false;

void setup(){
    background(0);
    fill(0);
    size(250,250);  
}

void draw(){
    //println(mouseX+" "+mouseY);
    if(step == 0)
    {      
        printTheTitle("Along The Road");
        textAlign(CENTER);
        fill(255);
        text("One day you wake up, you find yourself in the desert, what will you do?", 10, 60, 240, 80);
        
        rectMode(CENTER);
        fill(0);
        noStroke();
        rect(width/2-w,height/2,w*3/2,h);
        fill(255);
        text("Walk Around",width/2-w,height/2);
        
        fill(0);
        rect(width/2+w,height/2,w,h);
        fill(255);
        text("Stay and Wait",width/2+w,height/2);
        die=false;
    }
    else if ( step == 1 && choice == 1){
        background(220,20,60);
        fill(0);
      
        textAlign(CENTER);
        rectMode(CORNER);
        fill(255);
        text("You accidentatlly went into a Pharoahs Tomb", 10, 10, 240, 80);
        text("Your Cursed", 10, 70, 240, 80);
        die=true;
        
    }
    else if(step == 1 && choice == 2)
    {
        background(0);
        fill(0);
      
        printTheTitle("A group of Tourist walk by, you followed them");
        textAlign(CENTER);
        fill(255);
        text("Back in thenoStroke() Dubai City, You're walking along the street, and then?", 10, 60, 240, 80);
        
        rectMode(CENTER);
        fill(0);
        noStroke();
        rect(width/2-w,height/2,w,h);
        fill(255);
        text("Sit down",width/2-w,height/2);
        
        fill(0);
        rect(width/2+w,height/2,w,h);
        fill(255);
        text("Talk to people",width/2+w,height/2);
         die=false;
    }
    else if ( step == 2 && choice == 1){
        background(220,20,60);
        fill(0);
      
        textAlign(CENTER);
        rectMode(CORNER);
        fill(255);
        text("Police caught you for pretending to be beggar", 10, 10, 240, 80);
        text("Your Die", 10, 70, 240, 80);
        
        die=true;
        if(back)
        { 
          choice = 2;
          back=false;
        }
    }
    else if ( step == 2 && choice == 2){
        background(0);
        fill(0);
      
        printTheTitle("You approach a guy, he give you a bunch of gold money. ");
        textAlign(CENTER);
        fill(255);
        text("You're now in Iran. A Persian Merchant shows you his Persian Rug, the price is almost equivalent to your gold money.", 10, 60, 240, 80);
        
        rectMode(CENTER);
        fill(0);
        noStroke();
        rect(width/2-w,height/2,w,h);
        fill(255);
        text("Buy",width/2-w,height/2);
        
        fill(0);
        rect(width/2+w,height/2,w,h);
        fill(255);
        text("Run",width/2+w,height/2);
        
        die=false;
    }
    else if ( step == 3 && choice == 1){
        background(0);
        fill(0);
      
        printTheTitle("The merchant was so glad, he invited you to go with him");
        textAlign(CENTER);
        fill(255);
        text("Your now in China. You saw an old man falls down on the street. What will you do?", 10, 60, 240, 80);
        
        rectMode(CENTER);
        fill(0);
        noStroke();
        rect(width/2-w,height/2,w,h);
        fill(255);
        text("Run",width/2-w,height/2);
        
        fill(0);
        rect(width/2+w,height/2,w,h);
        fill(255);
        text("Give a Hand",width/2+w,height/2);
        
        die=false;
    }
    else if (step == 3 && choice == 2){
        background(220,20,60);
        fill(0);
      
        textAlign(CENTER);
        rectMode(CORNER);
        fill(255);
        text("You walk away, accidentally stump over the rug", 10, 10, 240, 80);
        text("You Die", 10, 70, 240, 80);
        
        die=true;
    }
    else if (step == 4 && choice == 1){
        background(220,20,60);
        fill(0);
      
        textAlign(CENTER);
        rectMode(CORNER);
        fill(255);
        text("You was caught and prove guilty. You paid the old man with all your remaining money.", 10, 10, 240, 80);
        text("You're Broke", 10, 70, 240, 80);
        
        die=true;
    }
    else if ( step == 4 && choice == 2){
        background(0);
        fill(0);
      
        printTheTitle("The old man send you a free trip to Korea");
        textAlign(CENTER);
        fill(255);
        text("What will you choose for the transportation?", 10, 60, 240, 80);
        
        rectMode(CENTER);
        fill(0);
        noStroke();
        rect(width/2-w,height/2,w,h);
        fill(255);
        text("Plane",width/2-w,height/2);
        
        fill(0);
        rect(width/2+w,height/2,w,h);
        fill(255);
        text("Boat",width/2+w,height/2);
        
        die=false;
    }
    else if ( step == 5 && choice == 1){
        background(0);
        fill(0);
      
        printTheTitle("You just found out you booked a wrong flight");
        textAlign(CENTER);
        fill(255);
        text("You entered North Korea", 10, 60, 240, 80);
        
        rectMode(CENTER);
        fill(0);
        noStroke();
        rect(width/2-w,height/2,w,h);
        fill(255);
        text("Say Hello",width/2-w,height/2);
        
        fill(0);
        rect(width/2+w,height/2,w,h);
        fill(255);
        text("Explore",width/2+w,height/2);
        
        die=false;
    }
    else if ( step == 5 && choice == 2){
        background(0);
        fill(0);
      
        printTheTitle("You have come to South Korea.");
        textAlign(CENTER);
        fill(255);
        text("You saw a famous Kpop singer.", 10, 60, 240, 80);
        
        rectMode(CENTER);
        fill(0);
        noStroke();
        rect(width/2-w,height/2,w,h);
        fill(255);
        text("Take a picture",width/2-w,height/2);
        
        fill(0);
        rect(width/2+w,height/2,w,h);
        fill(255);
        text("Ask for Autograph",width/2+w,height/2);
        
        jump = true;
        die=false;
    }
     else if (step == 6 && choice == 1){
        background(220,20,60);
        fill(0);
      
        textAlign(CENTER);
        rectMode(CORNER);
        fill(255);
        text("You were reported to the government", 10, 10, 240, 80);
        text("You Die", 10, 70, 240, 80);
        
        die=true;
    }
    else if ( step == 6 && choice == 2){
        background(0);
        fill(0);
      
        printTheTitle("You were caught by the security patrol and send out of the country");
        textAlign(CENTER);
        fill(255);
        text("you jump off the boat and come to Philippines! It's hot, what will you do?", 10, 60, 240, 80);
        
        rectMode(CENTER);
        fill(0);
        noStroke();
        rect(width/2-w,height/2,w,h);
        fill(255);
        text("Find a place to sit",width/2-w,height/2);
        
        fill(0);
        rect(width/2+w,height/2,w,h);
        fill(255);
        text("Swim",width/2+w,height/2);
        
        jump = true;
        die=false;
        fromN=true;
    }
     else if ( step == 7 && choice == 1){
        background(0);
        fill(0);
      
        printTheTitle("You saw your friend, and he is preparing to go to a vacation");
        textAlign(CENTER);
        fill(255);
        text("You have come to Philippines! It's hot, what will you do?", 10, 60, 240, 80);
        
        rectMode(CENTER);
        fill(0);
        noStroke();
        rect(width/2-w,height/2,w,h);
        fill(255);
        text("Find a place to sit",width/2-w,height/2);
        
        fill(0);
        rect(width/2+w,height/2,w,h);
        fill(255);
        text("Swim",width/2+w,height/2);
        
         die=false;
         fromN=false;
    }
     else if ( step == 7 && choice == 2){
        background(220,20,60);
        fill(0);
      
        textAlign(CENTER);
        rectMode(CORNER);
        fill(255);
        text("You are surronded by a group of kpop fans", 10, 10, 240, 80);
        text("You Die", 10, 70, 240, 80);
        
        die=true;
    }
    else if (step == 8 && choice == 1){
        background(220,20,60);
        fill(0);
      
        textAlign(CENTER);
        rectMode(CORNER);
        fill(255);
        text("You sit under a coconut tree. a coconut falls down", 10, 10, 240, 80);
        text("You Die", 10, 70, 240, 80);
        
        die=true;
    }
    else if (step == 8 && choice == 2){
        background(255,255,0);
        fill(0);
      
        textAlign(CENTER);
        rectMode(CORNER);
        fill(0);
        text("You saw a boat that is going to Ameica", 10, 10, 240, 80);
        text("You woke up, and you're in you bootcamp clss", 10, 70, 240, 80);
        
        die=false;
    }
    if(die)
    {
        textAlign(LEFT);
        fill(255);
        text("<Return",200,230);
    }
    else if(step==8 && !die)
    {
        textAlign(LEFT);
        fill(255);
        text("<Home",200,230);
    }
   
}

void mouseClicked(){
  showError = false;
  if(mouseX > width/2-w*3/2 && mouseX < width/2-w/2 && mouseY > height/2-h/2 && mouseY < height/2+h/2)
  {
     println("wee");
     if(jump)
     {
       step+=1;
       jump=false;
     }
     step+=1;
     choice=1;
     redraw();
  }
  else if (mouseX > width/2+w/2 && mouseX < width/2+w*3/2 && mouseY > height/2-h/2 && mouseY < height/2+h/2)
  {
       println("booh");
       if(jump)
       {
         step+=1;
         jump=false;
       }
       step+=1;
       choice=2;
       redraw();
  }
  else if (mouseX > 200 && mouseX < 250 && mouseY > 220 && mouseY < 230 && die)
  {
       
       if(jump)
       {
         step-=1;
         jump=false;
       }
       if(fromN)
       {
          step-=1;
          choice=2;
       }
       step-=1;
       println("return" +" " +step);
       back=true;
       redraw();
  }
  else if (mouseX > 200 && mouseX < 250 && mouseY > 220 && mouseY < 230 && !die && step == 8)
  {
       step=0;
       println("home" +" " +step);
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
}
void printTheTitle(String stitle)
{
   background(0);
   size(250,250); 
   textAlign(CENTER);
   rectMode(CORNER);
   fill(255);
   text(stitle, 10, 10, 240, 80); 
}