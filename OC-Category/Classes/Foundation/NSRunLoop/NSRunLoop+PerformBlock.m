//
//  NSRunLoop+PerformBlock.m
//
//  Created by 余洪江 on 16/03/01.
//  Copyright © MRJ. All rights reserved.
//

#import "NSRunLoop+PerformBlock.h"

NSString *const NSRunloopTimeoutException = @"NSRunloopTimeoutException";

@implementation NSRunLoop (PerformBlock)

- (void)performBlockAndWait:(void (^)(BOOL *))block {
    [self performBlockAndWait:block timeoutInterval:10.0];
}

- (void)performBlockAndWait:(void (^)(BOOL *))block timeoutInterval:(NSTimeInterval)timeoutInterval {
    if (!block || timeoutInterval < 0.0) {
        [NSException raise:NSInvalidArgumentException format:@"%lf is invalid for timeout interval", timeoutInterval];
    }
    
    NSDate *startedDate = [NSDate date];
    BOOL finish = NO;
    block(&finish);
    while (!finish && [[NSDate date] timeIntervalSinceDate:startedDate] < timeoutInterval) {
        @autoreleasepool {
            [self runUntilDate:[NSDate dateWithTimeIntervalSinceNow:.1]];
        }
    }
    
    if (!finish) {
        [NSException raise:NSRunloopTimeoutException format:@"execution of block timed out in performBlockAndWait:."];
    }
}

@end
