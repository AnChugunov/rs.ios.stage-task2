#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    UInt8 reversedInt = 0;
    for (NSInteger i = 0; i < 8; i++) {
        if (n % 2) {
            reversedInt += pow(2, 7 - i);
        }
        n = n/2;
    }
    return reversedInt;
}
