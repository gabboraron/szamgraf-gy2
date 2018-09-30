
ArrayList<Shape> shapes = new ArrayList<Shape>();
Shape selected_shape = null;

void setup() {
  size(800, 600);
  Rectangle r = new Rectangle();
  r.position.x = 300;
  r.position.y = 300;
  
  Circle c = new Circle();
  c.position.x = 600;
  c.position.y = 400;
  
  shapes.add(r);
  shapes.add(c);
}
void draw() {
  update();
  background(255, 255, 255);
  
  for (Shape s : shapes) {
   s.Draw(); 
  } 
  
}

void update() {
 if (selected_shape != null) {
  selected_shape.selected = false;
  selected_shape = null;
 }
 
 for (Shape s : shapes) {
   if (s.Contains(mouseX, mouseY)) {
     s.selected = true;
     selected_shape = s;
     break;
   }
 }
   
}

void mousePressed() {
  Shape s;
  if (millis() % 2 == 0) {
   s = new Rectangle(); 
  } else {
   s = new Circle(); 
  }
  
  s.position = new PVector(mouseX, mouseY);
  shapes.add(s);
}
