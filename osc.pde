// receiving osc messages from wekinator, which is receiving from handpose-osc

import oscP5.*;

// create osc object
OscP5 oscP5;

// inital state
boolean receiving = false;

// hand data
int shape;
float xPos;

// this function gets called everytime processing receives a message
void oscEvent(OscMessage oscMsg) {
  // change state
  receiving = true;
  
  // checking the message is coming from the right place
  if (oscMsg.addrPattern().equals("/wek/outputs")) {
    
    // message for a palm or fist
    shape = int(oscMsg.get(0).floatValue());
    println("shape: " + shape + "\n");
    
    // for movement along the x-axis
    xPos = oscMsg.get(1).floatValue();
    println("xPos: " + xPos + "\n");
  }
}
