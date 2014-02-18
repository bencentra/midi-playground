import themidibus.*;

class MidiSequence_B4 implements MidiSequence {
  // Copy this for every MidiSequence class
  MidiBus[] buses = new MidiBus[3];
  MidiSequence_B4(MidiBus[] b) {
    buses = b;
  }
  // Overwrite this with your cool MIDI sequence
  void playSequence() {
    /*
    * Testing velocity changes
    */
     MidiBus mb1 = buses[0];
     MidiBus mb2 = buses[1];
     int startPitch = 60;
     for (int i = 0; i <= 12; i++) {
       //println("bus 1 vel: " + (i * 10));
       //println("bus 2 vel: " + (120 - (i * 10))); 
       mb1.sendNoteOn(1, startPitch + i, i * 10);
       mb2.sendNoteOn(1, startPitch + i, 120 - (i * 10));
       delay(500);
       mb1.sendNoteOff(1, startPitch + i, i * 10);
       mb2.sendNoteOff(1, startPitch + i, 120 - (i * 10));
     }
  }
}
