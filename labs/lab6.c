// Test two MOO words, report Bulls & Cows...
// Each word contains four 4-bit digits, packed into low order.
// Each digit ranges from 0 to 9.
// Returns a word whose two low-order 4-bit digits are Bulls & Cows.

int count_bull_cows(int a, int b) {
  int bulls;                            // number of bulls
  int cows;                             // number of cows
  int i, j, btemp, atry, btry, mask;    // temp vars

  // Compute Bulls: check each of the four 4-bit digits in turn
  bulls = 0;
  mask = 0xF;                           // mask chooses which 4-bit digit we check
  for (i = 0; i < 4; i = i + 1) {
    // if the 4-bit digits match, we have a bull
    if ((a & mask) == (b & mask)) {
      bulls = bulls + 1;
      // turn matching 4-bit digits to 0xF so we don't
      // count them again when computing number of cows
      a = a | mask;
      b = b | mask;
    }
    // shift mask to check next 4-bit digit
    mask = mask << 4;
  }

  // Compute Cows: check each non-0xF digit of A against all the
  // non-0xF digits of B to see if we have a match
  cows = 0;
  for (i = 0; i < 4; i = i + 1) {
    atry = a & 0xF;                     // this is the next digit from A 
    a = a >> 4;                         // next time around check the next digit
    if (atry != 0xF) {                  // if this digit wasn’t a bull
      // check the A digit against each of the four B digits
      btemp = b;                        // make a copy of the B digits
      mask = 0xF;                       // mask chooses which 4-bit digit we check
      for (j = 0; j < 4; j = j + 1) {
        btry = btemp & 0xF;             // this is the next digit from B
        btemp = btemp >> 4;             // next time around check the next digit
        if (btry == atry) {             // if the digits match, we've found a cow
        cows = cows + 1;
        b = b | mask;                   // remember that we matched this B digit    
        break;                          // move on to next A digit
        }
        mask = mask << 4;
      }
    }
  }

  // encode result and return to caller
  return (bulls << 4) + cows;
}