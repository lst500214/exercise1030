PImage sun, earth, moon ;
float x = 100;
float y = 100;
float angle = 0;
float phi = 0;

void setup (){
  
  size(600,600);
  sun = loadImage("sun.png");
  earth = loadImage("earth.png");
  moon = loadImage("moon.png");
}

void draw(){
  background(0);
  angle  += 0.66;
  phi += 0.105;
  
  //sun
  image(sun, width/2, height/2);
    
  //earth
  pushMatrix();
  translate(width/2, height/2);
  float earthAngle = map(mouseX, 0, width, -PI, PI);
  rotate(earthAngle);
  imageMode(CENTER);
  image(earth, x, y);
  
  //moon
  translate(x,y);
  float moonX = cos(angle+phi)*60;
  float moonY = sin(angle+phi)*60;
  image(moon, moonX, moonY);
  popMatrix();
  
  angle =0;
  phi += 0.0001;
}
