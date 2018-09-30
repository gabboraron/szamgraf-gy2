class Rectangle extends Shape{
  //mindig ugyanott legyen a közepe
  
  int h = 100;
  int w = 100;
  
  void Draw(){
    if(selected) {
      fill(select_fill_color.x, select_fill_color.y, select_fill_color.z);        // az objektum belso szinet allitja be
      stroke(select_stroke_color.x, select_stroke_color.y, select_stroke_color.z); //stroke_color - objektumokkerületét álllítja be, csak a vonalét
    } else {
       fill(fill_color.x, fill_color.y, fill_color.z);
       stroke(stroke_color.x, stroke_color.y, stroke_color.z); //stroke_color - objektumokkerületét álllítja be, csak a vonalét
    }      
    //  rect(position.x-w/2, position.y-h/2, w, h); //mert a pont a képerynő felénél van kezdetben
    
      beginShape();
      vertex(position.x - w/2, position.y - h/2);
      vertex(position.x + w/2, position.y - h/2);
      
      vertex(position.x + w/2, position.y + h/2);
      vertex(position.x - w/2, position.y + h/2);
      endShape(CLOSE);
  }
  
  Boolean Contains(int x, int y){
    float dx = abs(position.x -x);
    float dy = abs(position.y -y);
    return dx < w/2 && dy < h/2;  
  }
}
