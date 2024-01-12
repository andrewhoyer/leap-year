//
//  main.m
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        long year = strtol(argv[1], NULL, 0);
        
        bool isLeap = NO;
        
        if (year % 4 == 0) {
            if (year % 100 == 0) {
                if (year % 400 == 0) {
                    isLeap = YES;
                }
            } else {
                isLeap = YES;
            }
        }
        
        if (isLeap) {
            printf("%li is a leap year\n", year);
        } else {
            printf("%li is not a leap year\n", year);
        }
        
    }
    return 0;
}
