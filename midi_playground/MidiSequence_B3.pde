import themidibus.*;

class MidiSequence_B3 implements MidiSequence {
  // Copy this for every MidiSequence class
  MidiBus[] buses = new MidiBus[3];
  MidiSequence_B3(MidiBus[] b) {
    buses = b;
  }
  // Overwrite this with your cool MIDI sequence
  void playSequence() {
    /*
    * Testing multiple channels, single bus
    */
    MidiBus mb1 = buses[0];
    mb1.sendNoteOn(2, 60, 127);
    mb1.sendNoteOn(3, 64, 127);
    mb1.sendNoteOn(4, 67, 127);
    delay(100);
    mb1.sendNoteOff(2, 60, 127);
    mb1.sendNoteOff(3, 64, 127);
    mb1.sendNoteOff(4, 67, 127);
  }
}
