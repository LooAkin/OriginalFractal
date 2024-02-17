public void setup(){
  size(600, 600);
  stroke(0, 250, 255);
}  

public void draw(){
  background(0);
  myFractal (300, 300, 200);
}

public void myFractal(int x, int  y, int siz){

    fill(255,255,255, 50);
    beginShape();
    vertex(x-siz*.5, y-siz);
    vertex(x-siz*.5, y-siz);
    vertex(x+siz*.5, y-siz);
    vertex(x+siz, y);
    vertex(x+siz*.5, y+siz);
    vertex(x, y+siz);
    vertex(x-siz, y);
    vertex(x-siz, y);
    endShape();
  if(siz > 0) {
    myFractal((int)x+siz/2, (int)y+siz/2, (int)siz/2);
    myFractal((int)x-siz/2, (int)y-siz/2, (int)siz/2);
    myFractal(x, y, siz-10);
  }
}

 
