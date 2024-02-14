public void setup(){
  size(800,800);
  fill(200, 0, 50, 25);
  noStroke();
}  

public void draw(){
  background(255);
  myFractal (400, 400, 400);
}

public void myFractal(int x, int  y, int siz){
  ellipse(x*.5, y, siz, siz);
  ellipse(x*.625, y*.625, siz, siz);
  ellipse(x*.875, y*.475, siz, siz);
  ellipse(x*1.125, y*.475, siz, siz);
  ellipse(x*1.375, y*.625, siz, siz);
  ellipse(x*1.5, y, siz, siz);
  ellipse(x*1.375, y*1.325, siz, siz);
  ellipse(x*1.125, y*1.475, siz, siz);
  ellipse(x*.875, y*1.475, siz, siz);
  ellipse(x*.625, y*1.325, siz, siz);
  if(siz > 0) {
    myFractal(x, y, siz-25);
    
  }
}
