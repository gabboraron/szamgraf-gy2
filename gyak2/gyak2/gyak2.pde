//Rectangle r;
//Circle c;

ArrayList<Shape> shapes = new ArrayList<Shape>();
Shape selected_shape = null;

void setup(){
   size(800, 600); 
    
    Rectangle r = new Rectangle();    
    r.position.x = 200;
    r.position.y = 200;
    
    Circle c = new Circle();
    c.position.x = 300;
    c.position.y = 300;
    
    shapes.add(r);
    shapes.add(c);
}


void draw() {
  update();
  background(255,255,255);
  
  for (Shape s : shapes){
    s.Draw();
  }
  
  
  /*if(mouseX<r.h && mouseY<r.w{
    fill
  }
  
  r.Draw();
  c.Draw();
  */ 
}

void update() {
  if (selected_shape != null) {
    selected_shape.selected = false;
    selected_shape = null;
  }
  
  for (Shape s : shapes){
    if(s.Contains(mouseX, mouseY)) {
      s.selected = true;
      selected_shape = s;
      break;
    }
  }
}

void mousePressed() {
  Shape s;
  if (millis() % 2 == 0){
    s = new Rectangle();
  } else {
    s = new Circle();
  }
  
  s.position = new PVector(mouseX, mouseY);
  shapes.add(s);
}
