// 1. get video to play at start of sketch
// 2. while video is playing collect hand gesture data
// 3. once video is complete output "handprint"

import processing.video.*;

// declaring movie object
Movie movie;

void setup() {
  size(1200, 800);
  
  // initialize osc object at port 12000
  oscP5 = new OscP5(this, 12000);
  
  // initialize movie object
  movie = new Movie(this, "demo.mp4");
  
  // plays movie once. use loop() to loop
  movie.play();
}

void movieEvent(Movie movie) {
  // read new frames from the movie
  movie.read();
}

void draw() {
  // display movie on screen
  image(movie, 0, 0);
}
