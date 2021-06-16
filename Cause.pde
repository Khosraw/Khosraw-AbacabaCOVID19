class Cause{
  String name;
  int count;
  color col;
  public Cause(int i, String n, int c){
    name = n;
    count = c;
    colorMode(HSB,1);
    float hue = (10000.5+((i-1)*0.61803))%1.0;
    if(i == 0 || i == CAUSE_COUNT-1){
      hue = 0.7;
    }else if(i == 1){
      hue = 0.04;
    }
    float lit = 0.74;
    float distToYG = abs(hue-0.25)*12;
    if(distToYG < 1){
      lit -= (1-distToYG)*0.15;
    }
    col = color(hue,0.7,lit);
    colorMode(RGB, 255);
  }
}
