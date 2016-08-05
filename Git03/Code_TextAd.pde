int step = -1;
int w = 50, h = 30;
int x1,x2,y1,y2,choice=0,backChoice=0;
boolean showError=false,die=false,back=false,jump=false,fromN=false;
PFont myFont,myFont2,myFont3,myFonts,myFont2s;

void setup(){
    background(0);
    fill(0);
    size(350,350);  
    // Uncomment the following two lines to see the available fonts 
    //String[] fontList = PFont.list();
    //printArray(fontList);
    myFont = createFont("Jury Duty",42);
    myFonts = createFont("Tahoma",15);
    myFont2 = createFont("Candara",19);
    myFont2s = createFont("Candara",16);
    myFont3 = createFont("Arial",15);

}

void draw(){
    println(mouseX+" "+mouseY);
    if(step == -1)
    {
        background(0);
        fill(0);
        textAlign(CENTER);
        fill(255);
        textFont(myFont);
        text("Along The Road", 0, height/2 - 50, 350,50);
        textFont(myFonts);
        text("click to Start", 0, height/2, 350,300);
    }
    else if(step == 0)
    {      
        textFont(myFont2);
        printTheTitle("Along The Road");
        printTheBody("You wake up and find yourself in the desert, what will you do?","Walk Around","Wait");
        die=false; 
    }
    else if ( step == 1 && choice == 1){
        background(220,20,60);
        fill(0);
      
        textAlign(CENTER);
        rectMode(CORNER);
        fill(255);
        text("You accidentally entered a Pharoah's Tomb", 20, 80, 300, 300);
        text("Your Cursed", 20, 100, 300, 300);
        die=true;
    }
    else if(step == 1 && choice == 2)
    {
        textFont(myFont2);
        printTheTitle("A group of Tourist walk by, you followed them");
        printTheBody("You're now in Dubai City. You walk along the street, and then?","Sit down","Talk to a person");
        die=false;
    }
    else if ( step == 2 && choice == 1){
        background(220,20,60);
        fill(0);
      
        textAlign(CENTER);
        rectMode(CORNER);
        fill(255);
        text("You're arrested for pretending to be beggar", 20, 80, 300, 300);
        text("Your Die", 20, 100, 300, 300);
        
        die=true;
    }
    else if ( step == 2 && choice == 2){
        textFont(myFont2);
        printTheTitle("You approach a guy, and he gives you a bag of gold money. ");
        printTheBody("You went to Iran. A Persian Merchant shows you his Persian Rug, the price is equivalent to your gold money.","Buy","Run");
        die=false;  
    }
    else if ( step == 3 && choice == 1){
        textFont(myFont2);
        printTheTitle("The merchant was so glad, and he invited you to go with him");
        printTheBody("Your now in China. The old man next to you fell down. What will you do","Run","Give a Hand");

        die=false;
    }
    else if (step == 3 && choice == 2){
        background(220,20,60);
        fill(0);
      
        textAlign(CENTER);
        rectMode(CORNER);
        fill(255);
        text("You walk away, accidentally tumbled over the rug", 20, 80, 300, 300);
        text("You Die", 20, 120, 300, 300);
        
        die=true;
    }
    else if (step == 4 && choice == 1){
        background(220,20,60);
        fill(0);
      
        textAlign(CENTER);
        rectMode(CORNER);
        fill(255);
        text("You was caught and proved guilty. You paid the old man with all your money.", 20, 80, 300, 300);
        text("You're Broke", 20, 120, 300, 300);
        
        die=true;
    }
    else if ( step == 4 && choice == 2){
        textFont(myFont2);
        printTheTitle("The old man send you a free trip to Korea");
        printTheBody("What will you choose?","Plane","Boat");

        die=false;
    }
    else if ( step == 5 && choice == 1){
        textFont(myFont2);
        printTheTitle("You booked a wrong flight");
        printTheBody("You entered North Korea, what will you do?","Say Hello","Explore");
        die=false;
    }
    else if ( step == 5 && choice == 2){
        textFont(myFont2);
        printTheTitle("You have come to South Korea.");
        printTheBody("You saw a famous Kpop singer","Take a picture","Ask for Autograph");
        
        jump = true;
        die=false;
    }
     else if (step == 6 && choice == 1){
        background(220,20,60);
        fill(0);
      
        textAlign(CENTER);
        rectMode(CORNER);
        fill(255);
        text("You were reported to the government", 20, 80, 300, 300);
        text("You Die", 20, 100, 300, 300);
        
        die=true;
    }
    else if ( step == 6 && choice == 2){
        textFont(myFont2);
        printTheTitle("You were caught by the security patrol and send out of the country");
        printTheBody("ou jump off the boat and come to Philippines! It's hot, what will you do?","Find a place to sit","Swim");

        jump = true;
        die=false;
        fromN=true;
    }
     else if ( step == 7 && choice == 1){
        textFont(myFont2);
        printTheTitle("You saw your friend, and he is preparing to go to a vacation");
        printTheBody("You have come to Philippines! It's hot, what will you do?","Find a place to sit","Swim");
        
         die=false;
         fromN=false;
    }
     else if ( step == 7 && choice == 2){
        background(220,20,60);
        fill(0);
      
        textAlign(CENTER);
        rectMode(CORNER);
        fill(255);
        text("You are surronded by a group of kpop fans", 20, 80, 300, 300);
        text("You Die", 20, 100, 300, 300);
        
        die=true;
    }
    else if (step == 8 && choice == 1){
        background(220,20,60);
        fill(0);
      
        textAlign(CENTER);
        rectMode(CORNER);
        fill(255);
        text("You sit under a coconut tree. a coconut falls down", 20, 80, 300, 300);
        text("You Die", 20, 120, 300, 300);
        
        die=true;
    }
    else if (step == 8 && choice == 2){
        background(255,255,0);
        fill(0);
      
        textAlign(CENTER);
        rectMode(CORNER);
        fill(0);
        text("You saw a boat that is going to Ameica", 20, 80, 300, 300);
        text("You woke up, and you're in you bootcamp class", 20, 100, 300, 300);
        
        die=false;
    }
    if(die)
    {
        textAlign(LEFT);
        fill(255);
        text("<Return",280,300);
    }
    else if(step==8 && !die)
    {
        textAlign(LEFT);
        fill(0);
        text("<Home",280,300);
    }
   
}

void mouseClicked(){
  showError = false;
  if(step==-1)
  { 
      step=0;
  }
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
  else if (mouseX > 280 && mouseX < 340 && mouseY > 280 && mouseY < 300 && die)
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
       if(step==2){choice=2;}
       step-=1;
       println("return" +" " +step);
       back=true;
       redraw();
  }
  else if (mouseX > 280 && mouseX < 340 && mouseY > 280 && mouseY < 300 && !die && step == 8)
  {
       step=-1;
       println("home" +" " +step);
       showError=false;
       die=false;
       back=false;
       jump=false;
       fromN=false;
       choice=0;
       backChoice=0;
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
   textAlign(CENTER);
   rectMode(CORNER);
   fill(255);
   text(stitle, 50, 10, 240, 200); 
}
void printTheBody(String topic, String ques, String ans)
{
        textFont(myFont2s);
        textAlign(CENTER);
        
        fill(255);
        text(topic, 20, 80, 300, 300);
        
        textFont(myFont3);
        rectMode(CENTER);
        fill(0);
        noStroke();
        rect(width/2-w,height/2,w*3/2,h);
        fill(255);
        text(ques,width/2-w,height/2);
        
        fill(0);
        rect(width/2+w,height/2,w,h);
        fill(255);
        text(ans,width/2+w,height/2);
}