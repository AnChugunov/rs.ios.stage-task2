#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    
    if (array == nil || array.count == 0 || ![array[0] isKindOfClass:NSArray.class]) {
            return @[];
        }
    NSArray *resultArr = [NSArray arrayWithObjects:arrOfDigits, arrOfStrings, nil];
    NSMutableArray *arrOfStrings = [[NSMutableArray alloc] init];
    NSMutableArray *arrOfDigits = [[NSMutableArray alloc] init];
    for (int i = 0; i < array.count; i++) {
        for (int j = 0; j < array[i].count; j++) {
            if (([array[i][j] isKindOfClass:[NSString class]])) {
                [arrOfStrings addObject:array[i][j]];
            }
            if ([array[i][j] isKindOfClass:[NSNumber class]]) {
            [arrOfDigits addObject:array[i][j]];
            }
        }
    }
    if (arrOfStrings.count == 0) {
        [arrOfDigits sortUsingDescriptors:[NSArray arrayWithObject:[NSSortDescriptor sortDescriptorWithKey:@"self" ascending:YES]]];
        return arrOfDigits;
    }
    if (arrOfDigits.count == 0) {
        return [arrOfStrings sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    }
    [arrOfDigits sortUsingDescriptors:[NSArray arrayWithObject:[NSSortDescriptor sortDescriptorWithKey:@"self" ascending:YES]]];
    [arrOfStrings sortUsingDescriptors:[NSArray arrayWithObject:[NSSortDescriptor sortDescriptorWithKey:@"self" ascending:NO selector:@selector(localizedCaseInsensitiveCompare:)]]];
    return resultArr;
    }

@end
