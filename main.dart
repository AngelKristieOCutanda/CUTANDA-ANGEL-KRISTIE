import 'dart:io';
import 'dart:core';

var morsecode = [
  ".-",
  "-...",
  "-.-.",
  "-..",
  ".",
  "..-.",
  "--.",
  "....",
  "..",
  ".---",
  "-.-",
  ".-..",
  "--",
  "-.",
  "---",
  ".--.",
  "--.-",
  ".-.",
  "...",
  "-",
  "..-",
  "...-",
  ".--",
  "-..-",
  "-.--",
  "--.."
];
var alphabet = [
  "A",
  "B",
  "C",
  "D",
  "E",
  "F",
  "G",
  "H",
  "I",
  "J",
  "K",
  "L",
  "M",
  "N",
  "O",
  "P",
  "Q",
  "R",
  "S",
  "T",
  "U",
  "V",
  "W",
  "X",
  "Y",
  "Z"
];

void main() {
  var str = stdin.readLineSync();
  morseDecode_MD(str, "");
}

bool valid(var str) {
  for (var x = 0; x < 26; x++) if (str == morsecode[x]) return true;
  return false;
}

void morseDecode_MD(var for_Decode, var al_decoded) {
  if (for_Decode.length == 0)
    print(al_decoded);
  else {
    for (int x = 0; x < 26; x++) {
      if (for_Decode.startsWith(morsecode[x])) {
        var still_Decoded = al_decoded + alphabet[x];
        var still_ToDecode = for_Decode.substring(morsecode[x].length);
        morseDecode_MD(still_ToDecode, still_Decoded);
      }
    }
  }
}
