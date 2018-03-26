//
//  CAMediaTimingFunction+AdditionalEquations.m
//
//  Created by 余洪江 on 16/03/01.
//  Copyright © MRJ. All rights reserved.
//

#import "CAMediaTimingFunction+AdditionalEquations.h"

@implementation CAMediaTimingFunction (AdditionalEquations)

#pragma mark - Circ

+ (CAMediaTimingFunction *)easeInCirc {
    return [CAMediaTimingFunction functionWithControlPoints: 0.6 : 0.04 : 0.98 : 0.335];
}

+ (CAMediaTimingFunction *)easeOutCirc {
    return [CAMediaTimingFunction functionWithControlPoints: 0.075 : 0.82 : 0.165 : 1.0];
}

+ (CAMediaTimingFunction *)easeInOutCirc {
    return [CAMediaTimingFunction functionWithControlPoints: 0.785 : 0.135 : 0.15 : 0.86];
}

#pragma mark - Cubic

+ (CAMediaTimingFunction *)easeInCubic {
    return [CAMediaTimingFunction functionWithControlPoints: 0.55 : 0.055 : 0.675 : 0.19];
}

+ (CAMediaTimingFunction *)easeOutCubic {
    return [CAMediaTimingFunction functionWithControlPoints: 0.215 : 0.61 : 0.355 : 1.0];
}

+ (CAMediaTimingFunction *)easeInOutCubic {
    return [CAMediaTimingFunction functionWithControlPoints: 0.645 : 0.045 : 0.355 : 1.0];
}

#pragma mark - Expo

+ (CAMediaTimingFunction *)easeInExpo {
    return [CAMediaTimingFunction functionWithControlPoints: 0.95 : 0.05 : 0.795 : 0.035];
}

+ (CAMediaTimingFunction *)easeOutExpo {
    return [CAMediaTimingFunction functionWithControlPoints: 0.19 : 1.0 : 0.22 : 1.0];
}

+ (CAMediaTimingFunction *)easeInOutExpo {
    return [CAMediaTimingFunction functionWithControlPoints: 1.0 : 0.0 : 0.0 : 1.0];
}

#pragma mark - Quad

+ (CAMediaTimingFunction *)easeInQuad {
    return [CAMediaTimingFunction functionWithControlPoints: 0.55 : 0.085 : 0.68 : 0.53];
}

+ (CAMediaTimingFunction *)easeOutQuad {
    return [CAMediaTimingFunction functionWithControlPoints: 0.25 : 0.46 : 0.45 : 0.94];
}

+ (CAMediaTimingFunction *)easeInOutQuad {
    return [CAMediaTimingFunction functionWithControlPoints: 0.455 : 0.03 : 0.515 : 0.955];
}

#pragma mark - Quart

+ (CAMediaTimingFunction *)easeInQuart {
    return [CAMediaTimingFunction functionWithControlPoints: 0.895 : 0.03 : 0.685 : 0.22];
}

+ (CAMediaTimingFunction *)easeOutQuart {
    return [CAMediaTimingFunction functionWithControlPoints: 0.165 : 0.84 : 0.44 : 1.0];
}

+ (CAMediaTimingFunction *)easeInOutQuart {
    return [CAMediaTimingFunction functionWithControlPoints: 0.77 : 0.0 : 0.175 : 1.0];
}

#pragma mark - Quint

+ (CAMediaTimingFunction *)easeInQuint {
    return [CAMediaTimingFunction functionWithControlPoints: 0.755 : 0.05 : 0.855 : 0.06];
}

+ (CAMediaTimingFunction *)easeOutQuint {
    return [CAMediaTimingFunction functionWithControlPoints: 0.23 : 1.0 : 0.320 : 1.0];
}

+ (CAMediaTimingFunction *)easeInOutQuint {
    return [CAMediaTimingFunction functionWithControlPoints: 0.86 : 0.0 : 0.07 : 1.0];
}

#pragma mark - Sine

+ (CAMediaTimingFunction *)easeInSine {
    return [CAMediaTimingFunction functionWithControlPoints: 0.47 : 0.0 : 0.745 : 0.715];
}

+ (CAMediaTimingFunction *)easeOutSine {
    return [CAMediaTimingFunction functionWithControlPoints: 0.39 : 0.575 : 0.565 : 1.0];
}

+ (CAMediaTimingFunction *)easeInOutSine {
    return [CAMediaTimingFunction functionWithControlPoints: 0.445 : 0.05 : 0.55 : 0.95];
}

#pragma mark - Back

+ (CAMediaTimingFunction *)easeInBack {
    return [CAMediaTimingFunction functionWithControlPoints: 0.6 : -0.28 : 0.735 : 0.045];
}

+ (CAMediaTimingFunction *)easeOutBack {
    return [CAMediaTimingFunction functionWithControlPoints: 0.175 : 0.885 : 0.320 : 1.275];
}

+ (CAMediaTimingFunction *)easeInOutBack {
    return [CAMediaTimingFunction functionWithControlPoints: 0.68 : -0.55 : 0.265 : 1.55];
}

@end
