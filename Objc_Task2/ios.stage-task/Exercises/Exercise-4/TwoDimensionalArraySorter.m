#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    
    NSMutableArray *outputNumbers = [NSMutableArray new];
    NSArray *sortOutput = [NSArray new];
    NSMutableArray *outputStrings = [NSMutableArray new];
   
    for (NSArray *elementArray in array) {
        if ([elementArray isKindOfClass:NSArray.class]) {
        for ( id element in elementArray) {
        if([element isKindOfClass:NSNumber.class]){
            [outputNumbers addObject:element];
        } else {
            [outputStrings addObject:element];
        }
    }
        } else {
            return @[];
        }
    }
    
        if (outputNumbers.count > 0) {
            sortOutput =  [outputNumbers sortedArrayUsingSelector:@selector(compare:)];
        } else {
            sortOutput =  [outputStrings sortedArrayUsingSelector:@selector(compare:)];
        }
    return sortOutput;
    
}

@end
