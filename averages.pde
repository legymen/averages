

import uibooster.*;
import uibooster.model.*;

Form form;

float value1, value2, value3, sm, am, gm, hm, rms;

void setup() {
  size(800, 600); 

  form = new UiBooster()
    .createForm("Medelvärden")
    .addSlider("Värde 1", 0, 20, 10, 5, 1)
    .addSlider("Värde 2", 0, 20, 10, 5, 1)
    .addSlider("Värde 3", 0, 20, 10, 5, 1)
    .run();
}

void draw() {

  background(100);

  value1 = form.getByLabel("Värde 1").asFloat();
  value2 = form.getByLabel("Värde 2").asFloat();
  value3 = form.getByLabel("Värde 3").asFloat();

  fill(222);
  textSize(32);

  sm = sumOf(value1, value2, value3);
  //am = ariMean(value1, value2, value3);
  gm = geoMean(value1, value2, value3);
  //hm = harMean(value1, value2, value3);
  rms = rmsMean(value1, value2, value3);

  text("Summan: " + str(sm), 100, 100);
  //text("Aritmetiskt medelvärde: " + str(am - am % 0.01), 100, 200);
  text("Geometriskt medelvärde: " + str(gm - gm % 0.01), 100, 300);
  //text("Harmoniskt medelvärde: " + str(hm - hm % 0.01), 100, 400);
  text("Kvadratiskt medelvärde (RMS): " + str(rms - rms % 0.01), 100, 500);
}
