PGraphics eye;


void setup() {
  
  surface.setTitle("Pokemon");
  size(300, 300);
  eye = createGraphics(50, 50);
  eye.beginDraw();
  eye.background(255,255,0);
  eye.fill(0);
  eye.ellipse(eye.width/2, eye.height/2, 40, 40);
  eye.fill(255);
  eye.ellipse(eye.width/2 + 5, eye.height/2 - 5, 20, 20);
  eye.endDraw();
  
  PImage icon = loadImage("iconom.png");
  surface.setIcon(icon);
}

void draw() {
   println("Posicion X: " + mouseX + ", " + "Posicion Y: " + mouseY);
  background(255,255,0);
  
  // Calcular el ángulo entre el centro de la ventana y el ratón
  float angle = atan2(mouseY - height/2, mouseX - width/2);

  // Dibujar el primer ojo
  pushMatrix();
  translate(width/2 - 100, height/2);
  rotate(angle);
  image(eye, -eye.width/2, -eye.height/2);
  popMatrix();

  // Dibujar el segundo ojo
  pushMatrix();
  translate(width/2 + 100, height/2);
  rotate(angle);
  image(eye, -eye.width/2, -eye.height/2);
  popMatrix();
  
  fill(255,0,0);
  circle(20,250,60);
  
  fill(255,0,0);
  circle(280,250,60);
  
  //fill(0);
  //triangle(146,190,130,170,160,170);
  
  // Nariz
  fill(0);
  ellipse(150, 190, 10, 10);
  
  // Boca
  //line(120, 220, 180, 220);
  circle(160,250,50);
  fill(255,0,130);
  circle(162,253,45);
}
