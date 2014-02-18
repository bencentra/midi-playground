import themidibus.*;

class MidiSequence_B2 implements MidiSequence {
  // Copy this for every MidiSequence class
  MidiBus[] buses = new MidiBus[3];
  MidiSequence_B2(MidiBus[] b) {
    buses = b;
  }
  // Overwrite this with your cool MIDI sequence
  void playSequence() {
    /*
    * Testing multiple buses
    */
    MidiBus mb1 = buses[0];
    MidiBus mb2 = buses[1];
    MidiBus mb3 = buses[2];
    mb1.sendNoteOn(1, 60, 127);
    mb2.sendNoteOn(1, 64, 127);
    mb3.sendNoteOn(1, 67, 127);
    delay(100);
    mb1.sendNoteOff(1, 60, 127);
    mb2.sendNoteOff(1, 64, 127);
    mb3.sendNoteOff(1, 67, 127);
  }
}
