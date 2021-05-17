#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    
    NSMutableString *resultString = [NSMutableString new];
    
    if (numbersArray == nil || [numbersArray count] == 0) {
           return @"";
       }
    for (NSNumber *number in numbersArray) {
        int verificationValue = number.intValue;
        if ((verificationValue > 255) || (verificationValue < 0) ) {
            return @"Invalid value";
        } else {
            [result appendFormat:@"%d.", verificationValue];
        }
    }
    return [resultSting substringToIndex:[resultString length] - 1];
}

@end
